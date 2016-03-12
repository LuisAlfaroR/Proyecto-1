`timescale 1ns / 1ps

module TestBench_Memoria_frecuencias;

	// Inputs
	reg rst;
	reg [2:0] fre;

	// Outputs
	wire [10:0] fre_sel;
	wire [7:0] fre_deco;

	// Instantiate the Unit Under Test (UUT)
	Memoria_frecuencias uut (
		.rst(rst), 
		.fre(fre), 
		.fre_sel(fre_sel), 
		.fre_deco(fre_deco)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		fre = 0;
		#100;
		rst=0;
		#100;
		fre=3'd1;
		#100;
		fre=3'd2;
		#100;
		fre=3'd3;
		#100;
		fre=3'd2;
		#100;
		fre=3'd1;
		#100;

	end
      
endmodule

