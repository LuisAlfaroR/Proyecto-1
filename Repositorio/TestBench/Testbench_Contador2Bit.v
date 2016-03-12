`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:24 02/22/2016
// Design Name:   Contador2Bit
// Module Name:   C:/Xilinx1/14.7/ISE_DS/ISE/desktop/prueba/Testbench_Contador2Bit.v
// Project Name:  prueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Contador2Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Contador2Bit;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire rco;

	// Instantiate the Unit Under Test (UUT)
	Contador2Bit uut (
		.clk(clk), 
		.reset(reset), 
		.rco(rco)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#300;
		
		

	end
	
	initial forever #10 clk = ~clk;
      
endmodule

