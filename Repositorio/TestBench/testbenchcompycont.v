`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:46:13 02/29/2016
// Design Name:   compycont
// Module Name:   C:/Xilinx1/14.7/ISE_DS/ISE/desktop/prueba/testbenchcompycont.v
// Project Name:  prueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compycont
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchcompycont;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0]d;

	// Outputs
	wire comp;

	// Instantiate the Unit Under Test (UUT)
	compycont uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.comp(comp)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		d = 10'd0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		d = 10'd725;
		
		#8000;
		
		d = 10'd100;
		
		#8000;

	end
	
	initial forever #1 clk = ~clk;
      
endmodule

