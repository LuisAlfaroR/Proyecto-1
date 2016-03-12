
module Divisor_de_Frecuencia(

input clk,
output reg clk_out);
 
reg [25:0] cuenta;

initial cuenta<=26'd0;
initial clk_out<=1'd0;

always @(posedge clk )begin
	if(cuenta==26'd50000000)begin
       cuenta=26'd0;
       clk_out=~clk_out;end
   else begin
       cuenta=cuenta+26'd1;end
end		 
endmodule

