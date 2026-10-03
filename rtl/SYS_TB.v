`timescale 1ns / 1ps

module SYS_TB;

    // ==========================================
    // Signals
    // ==========================================
    reg  REF_CLK;
    reg  UART_CLK;
    reg  RST;
    reg  RX_IN;
    wire TX_OUT;

    // ==========================================
    // Clock Generation
    // ==========================================
    // REF_CLK: 50 MHz -> Period = 20 ns (Toggle every 10 ns)
    always #10 REF_CLK = ~REF_CLK;

    // UART_CLK: 3.6864 MHz -> Period = 271.267 ns (Toggle every ~135.63 ns)
    always #135.63 UART_CLK = ~UART_CLK;

    // Baud Rate: 115200 bps -> 1 bit duration = 8680.55 ns
    localparam BIT_PERIOD = 8680.55;

    // ==========================================
    // DUT Instantiation
    // ==========================================
    SYS_TOP u_DUT (
        .REF_CLK(REF_CLK),
        .UART_CLK(UART_CLK),
        .RST(RST),
        .RX_IN(RX_IN),
        .TX_OUT(TX_OUT)
    );

  // VCD Dumping
    initial begin
        $dumpfile("System.vcd");
        $dumpvars;
    end
    // ==========================================
    // Master UART Transmitter Task
    // ==========================================
    task send_byte;
        input [7:0] tx_data; 
        reg par_bit;
        integer i;
        begin
            par_bit = ^tx_data; // Calculate Even Parity
            
            // Start bit
            RX_IN = 1'b0;
            #(BIT_PERIOD);
            
            // 8 Data bits (LSB First)
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = tx_data[i];
                #(BIT_PERIOD);
            end
            
            // Parity bit
            RX_IN = par_bit;
            #(BIT_PERIOD);
            
            // Stop bit
            RX_IN = 1'b1;
            #(BIT_PERIOD);
            
            // Inter-frame gap for safety
            #(BIT_PERIOD * 2);
        end
    endtask
    // ==========================================
    // Sequence of Operations (Stimulus)
    // ==========================================
    initial begin
        // 1. Initialize System
        REF_CLK  = 1'b0;
        UART_CLK = 1'b0;
        RST      = 1'b1;
        RX_IN    = 1'b1; // UART Idle state is high
        
        // 2. Apply Reset
        #100;
        RST = 1'b0;
        #100;
        RST = 1'b1;
        
        // Wait for reset synchronizers to clear
        #500;
        
        $display("--- SYSTEM READY ---");

        // -----------------------------------------------------------
        // PHASE 1: Configuration Operations
        // -----------------------------------------------------------
        $display("1. Configuring REG2 (UART_CONFIG) and REG3 (DIV_RATIO)...");
        
        // Write to 0x2: Prescale = 8 (6-bit: 001000), Even Parity (0), Parity En (1) -> 8'h21
        // Math: div_ratio(32) / prescale(8) = 4. 
        // 3.6864MHz / 4 = 921.6 kHz (Exactly 8x the 115.2kHz baud rate!)
        send_byte(8'hAA); // CMD: RegFile Write
        send_byte(8'h02); // Addr: 0x2
        send_byte(8'h21); // Data: 0x21
        
        // Write to 0x3: Div_Ratio = 32 -> 8'h20
        send_byte(8'hAA); // CMD: RegFile Write
        send_byte(8'h03); // Addr: 0x3
        send_byte(8'h20); // Data: 0x20
        
        #(BIT_PERIOD * 10); // Wait for configuration to settle

        // -----------------------------------------------------------
        // PHASE 2: RegFile Normal Operations
        // -----------------------------------------------------------
        $display("2. Performing Register File Write and Read...");
        
        // Write Command: Write 0x55 to Address 0x4
        send_byte(8'hAA); // CMD: RegFile Write
        send_byte(8'h04); // Addr: 0x4
        send_byte(8'h55); // Data: 0x55
        
        // Read Command: Read from Address 0x4 (DUT should TX 0x55 back)
        send_byte(8'hBB); // CMD: RegFile Read
        send_byte(8'h04); // Addr: 0x4
        
        // Wait for DUT to transmit the read data back
        #(BIT_PERIOD * 15); 

        // -----------------------------------------------------------
        // PHASE 3: ALU Operations
        // -----------------------------------------------------------
        $display("3. Performing ALU Operation WITH Operands...");
        
        // ALU Command w/ Ops: OpA = 10 (0x0A), OpB = 5 (0x05), FUN = Unsigned Add (0x0)
        // Expected Result = 15 (0x000F). DUT should TX 0x0F then 0x00.
        send_byte(8'hCC); // CMD: ALU with Operands
        send_byte(8'h0A); // Operand A
        send_byte(8'h05); // Operand B
        send_byte(8'h00); // ALU_FUN: ADD
        
        #(BIT_PERIOD * 30); // Wait for 2-byte transmission

        $display("4. Performing ALU Operation WITHOUT Operands...");
        
        // ALU Command w/o Ops: Uses existing Ops (10 and 5). FUN = Unsigned Sub (0x1)
        // Expected Result = 5 (0x0005). DUT should TX 0x05 then 0x00.
        send_byte(8'hDD); // CMD: ALU without Operands
        send_byte(8'h01); // ALU_FUN: SUB
        
        #(BIT_PERIOD * 30); // Wait for 2-byte transmission

        $display("--- SIMULATION COMPLETE ---");
        $stop;
    end

endmodule