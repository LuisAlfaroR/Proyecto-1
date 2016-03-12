`timescale 1ns / 1ps

module TestBench_Memoria_Corrientes;

	// Inputs
	reg [3:0] corriente;
	reg rst;

	// Outputs
	wire [9:0] I;

	// Instantiate the Unit Under Test (UUT)
	Memoria_corrientes uut (
		.corriente(corriente), 
		.rst(rst), 
		.I(I)
	);

	initial begin
		// Initialize Inputs
		corriente = 0;
		rst = 1;
		#10;
		rst=0;
      #10;
		corriente=4'd1;
		#100;
		corriente=4'd2;
		#100;
		corriente=4'd3;
		#100;
		corriente=4'd2;
		#100;
		corriente=4'd1;
		#100;
		$stop;

	end
      
endmodule

