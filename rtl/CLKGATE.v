module CLKGATE(
	input clk,
	input CLK_EN,
	output CLK_GATED
	);
 reg LATCHED_CLK;
always@(*) begin //Active low latch
	if(!clk) 
     LATCHED_CLK=CLK_EN; //<= in combinational/latch based circuits not preferred. Use Blocking
 //prevents potential simulation race conditions and matches exactly how synthesis tools interpret hardware latches
end
assign CLK_GATED=LATCHED_CLK&&clk;
endmodule
