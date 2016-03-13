`timescale 1ns / 1ps

module TestBench_Seleccion_corrientes;

	// Inputs
	reg [1:0] botones;
	reg clk;
	reg ENi;
	reg rst;

	// Outputs
	wire [6:0] I;
	wire [9:0] I_deco;

	// Instantiate the Unit Under Test (UUT)
	Seleccion_Corriente uut (
		.botones(botones), 
		.clk(clk), 
		.ENi(ENi), 
		.rst(rst), 
		.I(I),
		.I_deco(I_deco)
	);
	
	always begin #5;clk=~clk;end
	
	initial begin
		// Initialize Inputs
		botones = 0;
		clk = 0;
		ENi = 1;
		rst = 1;
		#20000000;
      rst=0;
		#20000000;
		botones=2'b10;
		#20000000;
		botones=2'b01;
		#20000000;
		$finish;
	end
      
endmodule

