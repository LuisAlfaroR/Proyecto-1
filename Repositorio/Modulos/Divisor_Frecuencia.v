
module Divisor_Frecuencia(

input clk, 
input[5:0]donde,
output reg clk_out);
 
reg [5:0] cuenta;
reg [5:0] cuenta_ant = 6'd0;

initial cuenta<=6'd0;
initial clk_out<=6'd0;

always @(posedge clk )begin
	if(cuenta==donde)begin
       cuenta=6'd0;
       clk_out=~clk_out;end
   else if(cuenta_ant>donde)begin
		 cuenta=6'd0;cuenta_ant=cuenta; end
	else begin
		 cuenta_ant=cuenta;
       cuenta=cuenta+6'd1;end
end		 
endmodule
