`timescale 1ns / 1ps

module TestBench_DPWM;

	// Inputs
	reg [1:0] botones;
	reg rst;
	reg funcion;
	reg clk;

	// Outputs
	wire senal;
	wire [7:0] catodos;
	wire [3:0] anodos;

	// Instantiate the Unit Under Test (UUT)
	DPWM uut (
		.botones(botones), 
		.rst(rst), 
		.funcion(funcion), 
		.clk(clk), 
		.senal(senal), 
		.catodos(catodos), 
		.anodos(anodos)
	);

	always begin #5 clk=~clk;end

	initial begin
		// Initialize Inputs
		botones = 0;
		rst = 1;
		funcion = 1;
		clk = 0;
		#20000000;
		rst=0;
		#20000000;
		botones=2'b10;
		#100000000;
		botones=2'b01;
		#60000000;
		$stop;
		funcion=0;
		botones=2'b10;
		#60000000;
		botones=2'b01;
		#100000000;
		$stop;

		

	end
      
endmodule

