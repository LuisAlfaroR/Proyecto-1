`timescale 1ns / 1ns


module TestBench_Frecuencia_Contador_PWM;

	// Inputs
	reg clk;
	reg [10:0] donde;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	Divisor_Frecuencia uut (
		.clk(clk), 
		.donde(donde), 
		.clk_out(clk_out)
	);
	
	always   // siempre haciendo esto, generando reloj de periodo 20ns
    begin
      #5;                // espera 5 ns y...
      clk = ~clk;// ...invierte el valor del reloj
    end
	 
	initial begin
		// Initialize Inputs
		clk = 0;
		donde=0;
		// Wait 100 ns for global reset to finish
		@(posedge clk)
		donde=1666;
		#100000;
		$stop;
		donde=666;
		#66000;
		$stop;
		donde=500;
		#40000;
		$stop;
		donde=400;
		#26000;
      $stop;
		donde=333;
		#20000;
		$stop;
	end
      
endmodule

