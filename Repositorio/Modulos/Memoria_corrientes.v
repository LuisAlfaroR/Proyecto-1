`timescale 1ns / 1ps

module Memoria_corrientes(
    input [3:0] corriente,
    input rst,
    output reg [6:0] I = 7'd0, output reg [9:0] I_deco = 10'd0
    );

always@*
	if(rst)begin
		I=7'd0;I_deco=10'd0;end
	else begin
	case(corriente)
	4'd0:begin I=7'd0;I_deco=10'd0; end
	4'd1:begin I=7'd10;I_deco=10'd100; end
	4'd2:begin I=7'd20;I_deco=10'd200; end
	4'd3:begin I=7'd30;I_deco=10'd300; end
	4'd4:begin I=7'd40;I_deco=10'd400; end
	4'd5:begin I=7'd50;I_deco=10'd500; end
	4'd6:begin I=7'd60;I_deco=10'd600; end
	4'd7:begin I=7'd70;I_deco=10'd700; end
	4'd8:begin I=7'd80;I_deco=10'd800; end
	4'd9:begin I=7'd90;I_deco=10'd900; end
	4'd10:begin I=7'd100;I_deco=10'd1000; end
	default:begin I=7'd0; I_deco = 10'd0; end
	endcase
	end

endmodule
