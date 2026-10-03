module SYS_TOP (
    input  wire REF_CLK,
    input  wire UART_CLK,
    input  wire RST,
    input  wire RX_IN,
    output wire TX_OUT
);

    // ==========================================
    // Internal Wires & Interconnects
    // ==========================================
    
    // Synchronized Resets
    wire sync_rst_1;
    wire sync_rst_2;

    // Generated Clocks
    wire alu_clk;
    wire tx_clk;
    wire rx_clk;

    // System Control <-> RegFile
    wire [3:0] address;
    wire       wr_en;
    wire       rd_en;
    wire [7:0] wr_data;
    wire [7:0] rd_data_rf;
    wire       rd_data_valid;

    // System Control <-> ALU
    wire [3:0]  alu_fun;
    wire        alu_en;
    wire        gate_en;
    wire [15:0] alu_out;
    wire        alu_out_valid;

    // RegFile Dedicated Outputs
    wire [7:0] op_a;        // REG0
    wire [7:0] op_b;        // REG1
    wire [7:0] uart_config; // REG2
    wire [7:0] div_ratio;   // REG3

    // REG2 Unpacking
    wire       par_en;
    wire       par_typ;
    wire [5:0] prescale;
    
    assign par_en   = uart_config[0];
    assign par_typ  = uart_config[1];
    assign prescale = uart_config[7:2]; 

    // Intermediate wire for division operator (prevents un-named sub-module inference in port binding)
    wire [7:0] rx_div_ratio;
    assign rx_div_ratio = (prescale != 0) ? (div_ratio / prescale) : div_ratio;

    // System Control <-> ASYNC FIFO (Write Domain)
    wire       tx_d_vld;
    wire [7:0] tx_p_data;
    wire       fifo_full;

    // UART RX <-> DATA_SYNC <-> System Control
    wire [7:0] uart_rx_p_data;
    wire       uart_rx_valid;
    wire [7:0] sync_rx_p_data;
    wire       sync_rx_d_vld;

    // ASYNC FIFO (Read Domain) <-> UART TX
    wire [7:0] rd_data_fifo;
    wire       f_empty;
    wire       tx_busy;
    wire       rd_inc; // From Pulse Gen

    // Clock Divider Enables
    wire clk_div_en;

    // 2-Flop Synchronizer Registers for clk_div_en
    reg  sync_clk_div_en_ff1;
    reg  sync_clk_div_en_ff2;
    wire sync_clk_div_en;
    assign sync_clk_div_en = sync_clk_div_en_ff2;

    // Source Domain Registers for DATA_SYNC (Glitch Fix)
    reg [7:0] uart_rx_p_data_reg;
    reg       uart_rx_valid_reg;

    // ==========================================
    // Reset Synchronizers
    // ==========================================
    RESET_SYNC #(.STAGES(2)) u_RST_SYNC_1 (
        .clk(REF_CLK),
        .async_rst_n(RST),
        .sync_rst_n(sync_rst_1)
    );

    RESET_SYNC #(.STAGES(2)) u_RST_SYNC_2 (
        .clk(UART_CLK),
        .async_rst_n(RST),
        .sync_rst_n(sync_rst_2)
    );

    // ==========================================
    // Clock Divider Enable Synchronizer
    // ==========================================
    always @(posedge UART_CLK or negedge sync_rst_2) begin
        if (!sync_rst_2) begin
            sync_clk_div_en_ff1 <= 1'b0;
            sync_clk_div_en_ff2 <= 1'b0;
        end else begin
            sync_clk_div_en_ff1 <= clk_div_en;
            sync_clk_div_en_ff2 <= sync_clk_div_en_ff1;
        end
    end

    // ==========================================
    // DATA_SYNC Isolation Registers
    // ==========================================
    always @(posedge rx_clk or negedge sync_rst_2) begin
        if (!sync_rst_2) begin
            uart_rx_valid_reg  <= 1'b0;
            uart_rx_p_data_reg <= 8'd0;
        end else begin
            uart_rx_valid_reg  <= uart_rx_valid;
            uart_rx_p_data_reg <= uart_rx_p_data;
        end
    end

    // ==========================================
    // Clock Dividers & Gating
    // ==========================================

    CLK_DIV u_CLK_DIV_TX (
        .i_ref_clk(UART_CLK),
        .i_rst_n(sync_rst_2),
        .i_clk_en(sync_clk_div_en), 
        .i_div_ratio(div_ratio),
        .o_div_clk(tx_clk)
    );

    CLK_DIV u_CLK_DIV_RX (
        .i_ref_clk(UART_CLK),
        .i_rst_n(sync_rst_2),
        .i_clk_en(sync_clk_div_en), 
        .i_div_ratio(rx_div_ratio), 
        .o_div_clk(rx_clk)
    );
    CLKGATE u_CLK_GATE (
        .CLK_EN(gate_en),
        .clk(REF_CLK),
        .CLK_GATED(alu_clk)
    ); 
   
    // ==========================================
    // System Control & Register File
    // ==========================================
    SYS_CTRL u_SYS_CTRL (
        .CLK(REF_CLK),
        .RST(sync_rst_1),
        .ALU_OUT(alu_out), 
        .OUT_Valid(alu_out_valid),
        .RdData(rd_data_rf),
        .RdData_Valid(rd_data_valid),
        .RX_P_DATA(sync_rx_p_data),
        .RX_D_VLD(sync_rx_d_vld),
        .FIFO_FULL(fifo_full),
        .ALU_FUN(alu_fun),
        .EN(alu_en),
        .CLK_EN(gate_en),
        .Address(address),
        .WrEn(wr_en),
        .RdEn(rd_en),
        .WrData(wr_data),
        .TX_P_DATA(tx_p_data),
        .TX_D_VLD(tx_d_vld),
        .clk_div_en(clk_div_en) 
    );

    RegisterFile #(
        .DATA_WIDTH(8),
        .DATA_DEPTH(16),
        .ADDR_WIDTH(4)
    ) u_RegFile (
        .CLK(REF_CLK),
        .RST(sync_rst_1),
        .Address(address),
        .WrEn(wr_en),
        .RdEn(rd_en),
        .WrData(wr_data),
        .RdData(rd_data_rf),
        .RdData_Valid(rd_data_valid),
        .REG0(op_a),
        .REG1(op_b),
        .REG2(uart_config),
        .REG3(div_ratio)
    );

    // ==========================================
    // ALU Processing
    // ==========================================
    ALU_8B u_ALU (
        .clk(alu_clk), 
        .rst(sync_rst_1),
        .A(op_a),
        .B(op_b),
        .ALU_EN(alu_en),
        .ALU_FUN(alu_fun),
        .ALU_OUT(alu_out),
        .Carry_Flag(), 
        .Arith_Flag(), 
        .Logic_Flag(), 
        .Shift_Flag(),
        .Valid(alu_out_valid),
        .CMP_Flag()
    );

    // ==========================================
    // UART Subsystem (RX, DATA_SYNC, TX, FIFO)
    // ==========================================
    UART_RX_TOP u_UART_RX (
        .clk(rx_clk),
        .rst(sync_rst_2),
        .RX_IN(RX_IN),
        .PRESCALE(prescale),
        .PAR_EN(par_en),
        .PAR_TYP(par_typ),
        .P_DATA(uart_rx_p_data),
        .data_valid(uart_rx_valid),
        .par_err(), 
        .stp_err()  
    );

    DATA_SYNC #(
        .STAGES(2),
        .BUS_WIDTH(8)
    ) u_DATA_SYNC (
        .CLK(REF_CLK),
        .RST(sync_rst_1),
        .UNSYNC_BUS(uart_rx_p_data_reg),
        .bus_enable(uart_rx_valid_reg), 
        .sync_bus(sync_rx_p_data),
        .enable_pulse(sync_rx_d_vld)
    );

    ASYNC_FIFO_TOP #(
        .DATA_WIDTH(8),
        .ADDR(8)
    ) u_ASYNC_FIFO (
        .wclk(REF_CLK),
        .wrst_n(sync_rst_1),
        .winc(tx_d_vld),
        .wdata(tx_p_data),
        .wfull(fifo_full),
        .rclk(tx_clk),
        .rrst_n(sync_rst_2),
        .rinc(rd_inc),
        .rdata(rd_data_fifo),
        .rempty(f_empty)
    );

    UART_TOP_TX u_UART_TX (
        .P_DATA(rd_data_fifo),
        .Data_Valid(~f_empty), 
        .clk(tx_clk),
        .rst(sync_rst_2),
        .PAR_EN(par_en),
        .PAR_TYP(par_typ),
        .TX_out(TX_OUT),
        .Busy(tx_busy)
    );

    // ==========================================
    // PULSE GEN (Falling Edge Detector on TX Busy)
    // ==========================================
    PULSE_GEN u_Pulse (
        .CLK(tx_clk),
        .RST(sync_rst_2),
        .LVL_SIG(tx_busy),
        .PULSE_SIG(rd_inc)
    );

endmodule





