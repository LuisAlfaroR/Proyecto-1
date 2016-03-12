`timescale 1ns / 1ps

module TestBench_Contador_0_7;

	// Inputs
	reg clk;
	reg EN;
	reg up;
	reg down;
	reg rst;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	Contador_0_7 uut (
		.clk(clk), 
		.EN(EN), 
		.up(up), 
		.down(down), 
		.rst(rst), 
		.out(out)
	);
	
	always begin #5 clk=~clk;end

	initial begin
		// Initialize Inputs
		clk = 0;
		EN = 1;
		rst = 1;
		up = 0;
		down = 0;
		
		#100;
		rst=0;
		#100;
		up=1;
		#100;
		down=1;up=0;
		#100;
		$finish;
	end
      
endmodule

