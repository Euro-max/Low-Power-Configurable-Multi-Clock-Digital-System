module FIFO_MEM #(
    parameter DATA_WIDTH = 8,
    parameter ADDR       = 8
)(
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  winc,
    input  wire                  wfull,
    input  wire [$clog2(ADDR)-1:0] waddr,
    input  wire [$clog2(ADDR)-1:0] raddr,
    input  wire [DATA_WIDTH-1:0] wdata,
    output wire [DATA_WIDTH-1:0] rdata
);

    reg [DATA_WIDTH-1:0] mem [0:ADDR-1];
    integer i;

    // Synchronous Write with Reset Initialization
    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            for (i = 0; i < ADDR; i = i + 1) begin
                mem[i] <= {DATA_WIDTH{1'b0}};
            end
        end else if (winc && !wfull) begin
            mem[waddr] <= wdata;
        end
    end

    // Combinational Read (First-Word Fall-Through)
    assign rdata = mem[raddr];

endmodule