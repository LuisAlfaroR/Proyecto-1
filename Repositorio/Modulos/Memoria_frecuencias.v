
module Memoria_frecuencias(

	input rst,
	input [2:0]fre,
	output reg [5:0]fre_sel = 6'd0,output reg [7:0] fre_deco= 8'd0

    );

always@*
	if(rst)begin
		fre_sel=6'd50;fre_deco=8'd10;end
	else begin
	case(fre)
	3'd0:begin fre_sel=6'd50;fre_deco=8'd10; end
	3'd1:begin fre_sel=6'd17;fre_deco=8'd30; end
	3'd2:begin fre_sel=6'd10;fre_deco=8'd50; end
	3'd3:begin fre_sel=6'd7;fre_deco=8'd75; end
	3'd4:begin fre_sel=6'd5;fre_deco=8'd100; end
	3'd5:begin fre_sel=6'd4;fre_deco=8'd125; end
	3'd6:begin fre_sel=6'd3;fre_deco=8'd175; end
	3'd7:begin fre_sel=6'd2;fre_deco=8'd250; end
	default:begin fre_sel=6'dx;fre_deco=8'dx;end
	endcase
	end

endmodule
