`timescale 1ns / 1ps

module TestBench_Contador_0_15_con_Load;

	// Inputs
	reg clk;
	reg EN;
	reg up;
	reg down;
	reg rst;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Contador_0_15 uut (
		.clk(clk), 
		.EN(EN), 
		.up(up), 
		.down(down), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		EN = 0;
		up = 0;
		down = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

