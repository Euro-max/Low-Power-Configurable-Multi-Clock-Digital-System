module RegisterFile #(
    parameter DATA_WIDTH = 8,  
    parameter DATA_DEPTH = 16, 
    parameter ADDR_WIDTH = $clog2(DATA_DEPTH)   
)(
    input  wire                  CLK,
    input  wire                  RST,
    input  wire [ADDR_WIDTH-1:0] Address,
    input  wire                  WrEn,
    input  wire                  RdEn,
    input  wire [DATA_WIDTH-1:0] WrData,
    
    output reg  [DATA_WIDTH-1:0] RdData,
    output reg                   RdData_Valid,
    
    output wire [DATA_WIDTH-1:0] REG0,
    output wire [DATA_WIDTH-1:0] REG1,
    output wire [DATA_WIDTH-1:0] REG2,
    output wire [DATA_WIDTH-1:0] REG3
);

    reg [DATA_WIDTH-1:0] mem [0:DATA_DEPTH-1];
    integer i;

    assign REG0 = mem[0];
    assign REG1 = mem[1];
    assign REG2 = mem[2];
    assign REG3 = mem[3];

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            RdData_Valid <= 1'b0;
            RdData       <= {DATA_WIDTH{1'b0}};
            for (i = 0; i < DATA_DEPTH; i = i + 1) begin
                if(i==2) mem[i]<=8'b00100001; //default prescale,PAR_TYP,PAR_EN
                else if(i==3) mem[i]<=8'b00100000; //default div_ratio for UART_TX (to provide 115.2kHz baud rate)
                else begin
                    mem[i] <= {DATA_WIDTH{1'b0}}; // clear all other registers
                end
            end
        end else begin
            RdData_Valid <= 1'b0;

            if (WrEn) begin
                mem[Address] <= WrData;
            end
            else if (RdEn) begin 
                RdData       <= mem[Address];
                RdData_Valid <= 1'b1;
            end
        end
    end

endmodule