module FIFO_RD #(
    parameter ADDR = 8
)(
    input  wire                  rclk,
    input  wire                  rrst_n,
    input  wire                  rinc,
    input  wire [$clog2(ADDR):0] rq2_wptr_bin, // Synced write pointer from write domain
    output reg  [$clog2(ADDR):0] rptr_bin,
    output wire [$clog2(ADDR)-1:0] raddr,
    output wire                  rempty
);

    localparam N = $clog2(ADDR);

    assign raddr = rptr_bin[N-1:0];

    // Combinational Empty Flag: Reacts immediately when write pointer arrives
    assign rempty = (rptr_bin == rq2_wptr_bin);

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            rptr_bin <= {(N+1){1'b0}};
        end else if (rinc && !rempty) begin
            rptr_bin <= rptr_bin + 1'b1;
        end
    end

endmodule