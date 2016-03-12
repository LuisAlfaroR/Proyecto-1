`timescale 1ns / 1ps

module contador_10_bits
	# (parameter N = 7)
	(
		input wire clk,
		input wire reset,
		//output reg rco,
		output reg [N-1:0] cuenta = 7'd0
		);
		
		reg [N-1:0] cuenta_next = 7'd0;
	
	always@ ( posedge clk, negedge reset)
	
		if (reset == 1'b0)
			cuenta <= 7'd0;
			
	    else
			cuenta <= cuenta_next;
			
    always@* begin
		if (cuenta == 7'd100) 
			cuenta_next = 7'd0;
	   else
			cuenta_next = cuenta + 7'd1;
    
		/*if (cuenta != 7'd100)
			 rco <= 1'd1;
		else 
			 rco <= 1'd0;*/
	end
			
endmodule

