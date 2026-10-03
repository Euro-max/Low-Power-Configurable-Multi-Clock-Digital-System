module FIFO_WR #(
    parameter ADDR = 8
)(
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  winc,
    input  wire [$clog2(ADDR):0] wq2_rptr_bin, // Synced read pointer from read domain
    output reg  [$clog2(ADDR):0] wptr_bin,
    output wire [$clog2(ADDR)-1:0] waddr,
    output wire                  wfull
);

    localparam N = $clog2(ADDR);

    assign waddr = wptr_bin[N-1:0];

    // Combinational Full Flag: MSB opposite, all lower bits match
    assign wfull = (wptr_bin == {~wq2_rptr_bin[N], wq2_rptr_bin[N-1:0]});

    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            wptr_bin <= {(N+1){1'b0}};
        end else if (winc && !wfull) begin
            wptr_bin <= wptr_bin + 1'b1;
        end
    end

endmodule