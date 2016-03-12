`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:08 02/28/2016
// Design Name:   comparador
// Module Name:   C:/Xilinx1/14.7/ISE_DS/ISE/desktop/prueba/testbechcomparador.v
// Project Name:  prueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbechcomparador;

	// Inputs
	reg clk;
	reg [9:0] c;
	reg [9:0] d;

	// Outputs
	wire comp;

	// Instantiate the Unit Under Test (UUT)
	comparador uut (
		.clk(clk), 
		.c(c), 
		.d(d), 
		.comp(comp)
	);

	always  
		begin 
			#10 clk = ~clk;
			#10 c=c +1;
		end
		
	initial 
	begin
		// Initialize Inputs
		clk = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		d= 725; 
		#20;
	end
   
endmodule

