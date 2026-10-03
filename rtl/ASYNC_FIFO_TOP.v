module ASYNC_FIFO_TOP #(
    parameter DATA_WIDTH = 8,
    parameter ADDR       = 8
)(
    // Write Domain
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  winc,
    input  wire [DATA_WIDTH-1:0] wdata,
    output wire                  wfull,
    
    // Read Domain
    input  wire                  rclk,
    input  wire                  rrst_n,
    input  wire                  rinc,
    output wire [DATA_WIDTH-1:0] rdata,
    output wire                  rempty
);

    localparam PTR_WIDTH  = $clog2(ADDR) + 1; 
    localparam ADDR_WIDTH = $clog2(ADDR);     

    // Synchronized Resets
    wire sync_wrst_n;
    wire sync_rrst_n;

    // Binary Pointers & Addresses
    wire [PTR_WIDTH-1:0]  wptr_bin, rptr_bin;
    wire [ADDR_WIDTH-1:0] waddr, raddr;

    // Gray Pointers
    wire [PTR_WIDTH-1:0]  wptr_gray_comb, rptr_gray_comb;
    reg  [PTR_WIDTH-1:0]  wptr_gray, rptr_gray;
    wire [PTR_WIDTH-1:0]  wq2_rptr_gray, rq2_wptr_gray;
    wire [PTR_WIDTH-1:0]  wq2_rptr_bin, rq2_wptr_bin;

    // Reset Synchronizers
    RESET_SYNC #(.STAGES(2)) sync_wreset (
        .clk(wclk),
        .async_rst_n(wrst_n),
        .sync_rst_n(sync_wrst_n)
    );

    RESET_SYNC #(.STAGES(2)) sync_rreset (
        .clk(rclk),
        .async_rst_n(rrst_n),
        .sync_rst_n(sync_rrst_n)
    );

    // Write Domain
    FIFO_WR #(.ADDR(ADDR)) wr_logic (
        .wclk(wclk),
        .wrst_n(sync_wrst_n),
        .winc(winc),
        .wq2_rptr_bin(wq2_rptr_bin), 
        .wptr_bin(wptr_bin),
        .waddr(waddr),
        .wfull(wfull)
    );

    B2G #(.DATA_WIDTH(PTR_WIDTH)) b2g_wptr (
        .BIN_DATA(wptr_bin),
        .GRAY_DATA(wptr_gray_comb)
    );

    // Flop the Gray code pointer to eliminate combinational glitch hazards (Ac_glitch03)
    always @(posedge wclk or negedge sync_wrst_n) begin
        if (!sync_wrst_n) begin
            wptr_gray <= {PTR_WIDTH{1'b0}};
        end else begin
            wptr_gray <= wptr_gray_comb;
        end
    end

    DFFS #(.STAGES(2), .DATA_WIDTH(PTR_WIDTH)) sync_r2w (
        .clk(wclk),
        .rst(sync_wrst_n),
        .DATA_IN(rptr_gray),
        .DATA_OUT(wq2_rptr_gray)
    );

    G2B #(.DATA_WIDTH(PTR_WIDTH)) g2b_rptr (
        .GRAY_DATA(wq2_rptr_gray),
        .BIN_DATA(wq2_rptr_bin)
    );

    // Read Domain
    FIFO_RD #(.ADDR(ADDR)) rd_logic (
        .rclk(rclk),
        .rrst_n(sync_rrst_n),
        .rinc(rinc),
        .rq2_wptr_bin(rq2_wptr_bin), 
        .rptr_bin(rptr_bin),
        .raddr(raddr),
        .rempty(rempty)
    );

    B2G #(.DATA_WIDTH(PTR_WIDTH)) b2g_rptr (
        .BIN_DATA(rptr_bin),
        .GRAY_DATA(rptr_gray_comb)
    );

    // Flop the Gray code pointer to eliminate combinational glitch hazards (Ac_glitch03)
    always @(posedge rclk or negedge sync_rrst_n) begin
        if (!sync_rrst_n) begin
            rptr_gray <= {PTR_WIDTH{1'b0}};
        end else begin
            rptr_gray <= rptr_gray_comb;
        end
    end

    DFFS #(.STAGES(2), .DATA_WIDTH(PTR_WIDTH)) sync_w2r (
        .clk(rclk),
        .rst(sync_rrst_n),
        .DATA_IN(wptr_gray),
        .DATA_OUT(rq2_wptr_gray)
    );

    G2B #(.DATA_WIDTH(PTR_WIDTH)) g2b_wptr (
        .GRAY_DATA(rq2_wptr_gray),
        .BIN_DATA(rq2_wptr_bin)
    );

    // Memory Core
    FIFO_MEM #(
        .DATA_WIDTH(DATA_WIDTH), 
        .ADDR(ADDR)
    ) memory_core (
        .wclk(wclk),
        .wrst_n(sync_wrst_n),
        .winc(winc),
        .wfull(wfull),
        .waddr(waddr),
        .raddr(raddr),
        .wdata(wdata),
        .rdata(rdata)
    );

endmodule