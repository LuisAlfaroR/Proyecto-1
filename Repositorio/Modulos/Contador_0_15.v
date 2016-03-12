
`timescale 1ns / 1ps
module Contador_0_15(
    input clk,
	 input EN,
    input up,
    input down,
    input rst,
    output reg [3:0] out
    );

always@(posedge clk) begin

	if(rst)begin
		out<=0; end
	else if(EN) begin
	if(up & down==0 & out!=4'd10)begin
		out<=out+4'd1; end
	else if(down & up==0 & out!=4'd0)begin
		out<=out-4'd1; end
	else if(down & up==0 & out==4'd0)begin
		out<=4'd10; end
	else if(up & down==0 & out==4'd10)begin
		out<=0; end
	end
end
endmodule
