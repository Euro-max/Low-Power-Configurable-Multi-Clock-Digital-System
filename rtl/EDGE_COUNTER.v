module EDGE_COUNTER(
    input wire clk,
    input wire rst,
    input wire enable,
    input wire [5:0] PRESCALE, // <-- Added dynamic input
    output reg [7:0] bit_cnt,
    output reg [7:0] edge_cnt
);

    // Dynamically rollover based on the current configuration
    wire bit_sig = (edge_cnt == (PRESCALE - 1'b1));

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            bit_cnt  <= 8'b0;
            edge_cnt <= 8'b0;
        end
        else if (enable) begin
            if (bit_sig) begin
                edge_cnt <= 8'b0;
                bit_cnt  <= bit_cnt + 1'b1;
            end 
            else begin
                edge_cnt <= edge_cnt + 1'b1;
            end
        end
        else begin
            // Reset cleanly when FSM drops 'enable' to 0
            bit_cnt  <= 8'b0;
            edge_cnt <= 8'b0;
        end
    end
endmodule