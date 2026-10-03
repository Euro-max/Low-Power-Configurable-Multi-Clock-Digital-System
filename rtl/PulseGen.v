module PULSE_GEN (
    input  wire CLK,
    input  wire RST,
    input  wire LVL_SIG,
    output wire PULSE_SIG
);

    // Internal register to delay the level signal by one clock cycle
    reg lvl_sig_q;

    // Sequential logic for the delay register
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            lvl_sig_q <= 1'b0;
        end else begin
            lvl_sig_q <= LVL_SIG;
        end
    end

    
    assign PULSE_SIG = ~LVL_SIG & lvl_sig_q;

endmodule