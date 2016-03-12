`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:36 03/07/2016 
// Design Name: 
// Module Name:    selectro_frecuencia_display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module divisor_frecuencia_displey(

input clk,
output reg clk_out);
 
reg [17:0] cuenta;

initial cuenta<=18'd0;
initial clk_out<=1'd0;

always @(posedge clk )begin
	if(cuenta==18'd208332)begin
       cuenta=18'd0;
       clk_out=~clk_out;end
   else begin
       cuenta=cuenta+18'd1;end
end		 
endmodule 