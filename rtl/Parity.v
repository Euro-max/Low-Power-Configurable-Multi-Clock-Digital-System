`include "uart_tx_defines.v"
module Parity(
	input [`DATA_WIDTH-1:0] P_DATA,
	input DATA_VALID,
	input PAR_TYP,           // Dynamic configuration input
	output reg par_bit
);

always@(*) begin
	if(DATA_VALID) begin
		if(PAR_TYP)          // 1: Odd Parity
			par_bit = ~^P_DATA;
		else                 // 0: Even Parity
			par_bit = ^P_DATA;
	end
	else begin 
		par_bit = 0;
	end
end

endmodule