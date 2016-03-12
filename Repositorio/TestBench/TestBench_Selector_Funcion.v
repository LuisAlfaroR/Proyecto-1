`timescale 1ns / 1ps

module TestBench_Selector_Funcion;

	// Inputs
	reg sel;

	// Outputs
	wire func;
	wire ENf;
	wire ENi;

	// Instantiate the Unit Under Test (UUT)
	Selector_Funcion uut (
		.sel(sel), 
		.func(func), 
		.ENf(ENf), 
		.ENi(ENi)
	);

	initial begin

		// Initialize Inputs
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		sel=1;
		#100;
		sel=0;
		#100;
		sel=1;
		#100;
		sel=0;
		#100;
        
	

	end
      
endmodule

