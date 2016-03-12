`timescale 1ns / 1ps

module TestBench_Frecuencia_Selector_frecuencia;

	// Inputs
	reg clk;

	// Outputs
	wire clk_out;
	// Instantiate the Unit Under Test (UUT)
	
	
	Divisor_de_Frecuencia uut (
		.clk(clk), 
		.clk_out(clk_out)
	);

	  // siempre haciendo esto, generando reloj de periodo 20ns
   always begin #5 clk=~clk;end
	 
	initial begin
		// Initialize Inputs
		clk=0;
		#40000000;
		$stop;
	end
endmodule

