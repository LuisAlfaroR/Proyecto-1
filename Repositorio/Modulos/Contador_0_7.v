`timescale 1ns / 1ps
module Contador_0_7(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [2:0] out = 3'd0
    );

always@(posedge clk) begin

	if(rst)begin
		out<=3'd0; end
	else if(EN) begin
	if(up & down==0)begin
		out<=out+3'd1; end
	else if(down & up==0)begin
		out<=out-3'd1; end
	end
end
endmodule
