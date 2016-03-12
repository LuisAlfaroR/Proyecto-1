`timescale 1ns / 1ps

module Contador2Bit
	#(parameter N = 2)
	(
		input wire clk,
		input wire reset,
		//output wire rco,
		output reg [1:0]cuenta_reg
		);
		
	reg [N-1:0] cuenta_next = 2'b00;
	
	always@ ( posedge clk, negedge reset)
	
		if (reset == 1'b0)
			cuenta_reg <= 2'b00;
			
	    else
			cuenta_reg <= cuenta_next;
			
    always@*
        cuenta_next = cuenta_reg + 2'b01;
    
    //assign rco = cuenta != 2'b11;
	 
endmodule 