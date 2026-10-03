module SYS_CTRL(
    input  wire        CLK,
    input  wire        RST,
    input  wire [15:0] ALU_OUT, 
    input  wire        OUT_Valid,
    input  wire [7:0]  RdData,
    input  wire        RdData_Valid,
    input  wire [7:0]  RX_P_DATA,
    input  wire        RX_D_VLD,
    input  wire        FIFO_FULL,
    
    output reg  [3:0]  ALU_FUN,
    output reg         EN,
    output reg         CLK_EN,
    output reg  [3:0]  Address,
    output reg         WrEn,
    output reg         RdEn,
    output reg  [7:0]  WrData,
    output reg  [7:0]  TX_P_DATA,
    output reg         TX_D_VLD,
    output reg         clk_div_en
);

// 12 States require a 4-bit gray-encoded enum
(* fsm_encoding = "gray" *)
typedef enum logic [3:0] {
    IDLE           = 4'd0,
    WAIT_WR_ADDR   = 4'd1,
    WAIT_WR_DATA   = 4'd2,
    WAIT_RD_ADDR   = 4'd3,
    WAIT_RD_DATA   = 4'd4,
    SEND_RD_DATA   = 4'd5,
    WAIT_OP_A      = 4'd6,
    WAIT_OP_B      = 4'd7,
    WAIT_ALU_FUN   = 4'd8,
    WAIT_ALU_OUT   = 4'd9,
    SEND_ALU_LOWER = 4'd10,
    SEND_ALU_UPPER = 4'd11
} state_t;

state_t current_state, next_state;

// ONLY metadata registers kept (Data registers removed)
reg [3:0]  addr_reg;
reg [3:0]  alu_fun_reg;
// =========================================================
// SEQUENTIAL BLOCK
// =========================================================
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        current_state <= IDLE;
        addr_reg      <= 4'b0;
        alu_fun_reg   <= 4'b0;
    end else begin
        current_state <= next_state;
        
        // Remember the Address for Read/Write commands
        if ((current_state == WAIT_WR_ADDR || current_state == WAIT_RD_ADDR) && RX_D_VLD) begin
            addr_reg <= RX_P_DATA[3:0]; 
        end
        
        // Remember the ALU Function command
        if (current_state == WAIT_ALU_FUN && RX_D_VLD) begin
            alu_fun_reg <= RX_P_DATA[3:0];
        end
    end
end

// =========================================================
// COMBINATIONAL BLOCK
// =========================================================
always @(*) begin
    // Default Output Assignments
    clk_div_en = 1'b1;
    ALU_FUN    = 4'b0;
    EN         = 1'b0;
    CLK_EN     = 1'b0;
    Address    = 4'b0;
    WrEn       = 1'b0;
    RdEn       = 1'b0;
    WrData     = 8'b0;
    TX_P_DATA  = 8'b0;
    TX_D_VLD   = 1'b0;
    next_state = current_state; 

    case (current_state)
        IDLE: begin
            if (RX_D_VLD) begin
                case (RX_P_DATA)
                    8'hAA: next_state = WAIT_WR_ADDR;
                    8'hBB: next_state = WAIT_RD_ADDR;
                    8'hCC: next_state = WAIT_OP_A;
                    8'hDD: next_state = WAIT_ALU_FUN; 
                    default: next_state = IDLE;
                endcase
            end
        end

        // --- WRITE COMMAND FLOW ---
        WAIT_WR_ADDR: begin
            if (RX_D_VLD) next_state = WAIT_WR_DATA; 
        end
        
        WAIT_WR_DATA: begin
            if (RX_D_VLD) begin
                WrEn       = 1'b1;
                Address    = addr_reg;
                WrData     = RX_P_DATA; 
                next_state = IDLE;
            end
        end

        // --- READ COMMAND FLOW ---
        WAIT_RD_ADDR: begin
            if (RX_D_VLD) next_state = WAIT_RD_DATA; 
        end
        
        WAIT_RD_DATA: begin
            RdEn    = 1'b1;
            Address = addr_reg;
            if (RdData_Valid) begin
                next_state = SEND_RD_DATA; 
            end
        end
        
        SEND_RD_DATA: begin
            if (!FIFO_FULL) begin
                TX_P_DATA  = RdData; // Read directly from Global RegFile port
                TX_D_VLD   = 1'b1;
                next_state = IDLE;
            end
        end

        // --- ALU OPERANDS FLOW ---
        WAIT_OP_A: begin
            if (RX_D_VLD) begin
                WrEn       = 1'b1;
                Address    = 4'h0; // Written to Global RegFile
                WrData     = RX_P_DATA;
                next_state = WAIT_OP_B;
            end
        end
        
        WAIT_OP_B: begin
            if (RX_D_VLD) begin
                WrEn       = 1'b1;
                Address    = 4'h1; // Written to Global RegFile
                WrData     = RX_P_DATA;
                next_state = WAIT_ALU_FUN;
            end
        end

        // --- ALU EXECUTION FLOW ---
        WAIT_ALU_FUN: begin
            if (RX_D_VLD) next_state = WAIT_ALU_OUT; 
        end
        
        WAIT_ALU_OUT: begin
            EN      = 1'b1;
            CLK_EN  = 1'b1; 
            ALU_FUN = alu_fun_reg;
            if (OUT_Valid) begin
                next_state = SEND_ALU_LOWER; 
            end
        end
        
        SEND_ALU_LOWER: begin
            EN      = 1'b1; // Keep ALU output from clearing to zero
            CLK_EN  = 1'b1; 
            ALU_FUN = alu_fun_reg;
            if (!FIFO_FULL) begin
                TX_P_DATA  = ALU_OUT[7:0];
                TX_D_VLD   = 1'b1;
                next_state = SEND_ALU_UPPER;
            end
        end
        
        SEND_ALU_UPPER: begin
            EN      = 1'b1; // Keep ALU output from clearing to zero
            CLK_EN  = 1'b1; 
            ALU_FUN = alu_fun_reg;
            if (!FIFO_FULL) begin
                TX_P_DATA  = ALU_OUT[15:8];
                TX_D_VLD   = 1'b1;
                next_state = IDLE;
            end
        end
        
        default: begin
            next_state = IDLE;
        end
    endcase
end

endmodule



/*module SYS_CTRL(
    input  wire clk,
    input  wire rst,
    input  wire [15:0] ALU_OUT, // To account for all product bits
    input  wire OUT_VALID,
    input wire RD_V,
    input  wire FIFO_FULL,
    input  wire [15:0] DATA_RD,
    input  wire RX_VALID,
    input  wire [27:0] RX_DATA, // To account for maximum length of frames fom RX
    output reg  [7:0] DATA_WR,
    output reg  WR_INC,
    output reg  [3:0] FUN,
    output reg  ALU_EN,
    output reg  GATED_EN,
    output reg  WR_EN,
    output reg  RD_EN,
    output reg  [2:0] ADDR,
    output reg  clk_div_en
);

// Fixed overlapping enum values and expanded to 4 bits to hold all 9 states
(* fsm_encoding = "gray" *)
typedef enum logic [3:0] {
    IDLE          = 4'b0000,
    WRITE         = 4'b0001,
    WRITE_A       = 4'b0010,
    WRITE_B       = 4'b0011,
    ALU_SEND      = 4'b0100,
    READ          = 4'b0101,
    ALU_RECEIVE   = 4'b0110,
    SENDFIFO_ALU  = 4'b0111,
    SENDFIFO_READ = 4'b1000
} state_t;

state_t current_state, next_state; // Changed from reg[3:0] to state_t to match enum

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

// Next State Logic
always @(*) begin
    // Default Output Assignments to prevent latches
    clk_div_en = 1'b1;
    DATA_WR    = 8'b0;
    WR_INC     = 1'b0;
    FUN        = 4'b0;
    ALU_EN     = 1'b0;
    GATED_EN   = 1'b0;
    WR_EN      = 1'b0;
    RD_EN      = 1'b0;
    ADDR       = 3'b0;
    next_state = current_state; 

    case (current_state)
        IDLE: begin
            if (RX_VALID && RX_DATA[7:0] == 8'hBB) begin
                next_state = READ;
            end else if (RX_VALID && RX_DATA[7:0] == 8'hAA) begin
                next_state = WRITE;
            end else if (RX_VALID && RX_DATA[7:0] == 8'hCC) begin
                next_state = WRITE_A;
            end else if (RX_VALID && RX_DATA[7:0] == 8'hDD) begin
                next_state = IDLE; // Maintained exactly as requested
            end
        end

        READ: begin
            RD_EN = 1'b1;
            ADDR  = RX_DATA[10:8];
            if (!FIFO_FULL&&RD_V) begin
                next_state = SENDFIFO_READ; // Corrected from SENDFIFO to match enum
            end else begin
                next_state = READ;
            end
        end

        WRITE_A: begin
            WR_EN      = 1'b1;
            DATA_WR    = RX_DATA[15:8];
            ADDR       = 3'b000;
            next_state = WRITE_B;
        end 

        WRITE_B: begin
            WR_EN      = 1'b1;
            DATA_WR    = RX_DATA[23:16];
            ADDR       = 3'b001;
            next_state = ALU_SEND;
        end

        ALU_SEND: begin
            ALU_EN     = 1'b1;
            GATED_EN   = 1'b1;
            FUN        = RX_DATA[27:24];
            next_state = ALU_RECEIVE;
        end

        // --- COMPLETED STATES --- //

        ALU_RECEIVE: begin
            GATED_EN = 1'b1; // Maintain ALU clock gate enable while waiting
            if (OUT_VALID) begin
                next_state = SENDFIFO_ALU;
            end
        end

        SENDFIFO_ALU: begin
            if (!FIFO_FULL) begin
                DATA_WR    = ALU_OUT;
                WR_INC     = 1'b1;
                next_state = IDLE;
            end
        end

        SENDFIFO_READ: begin
            if (!FIFO_FULL) begin
                DATA_WR    = DATA_RD;
                WR_INC     = 1'b1;
                next_state = IDLE;
            end
        end

        WRITE: begin
            WR_EN      = 1'b1;
            ADDR       = RX_DATA[10:8];
            DATA_WR    = RX_DATA[23:16];
            next_state = IDLE;
        end

        default: begin
            next_state = IDLE;
        end
    endcase
end

endmodule
*/