`timescale 1ns / 1ps
module PWM(input wire clk_cont, input wire reset, input wire[6:0] d, output wire salida_circuito);

wire [6:0]cuenta;
wire rco;
comparador comp_inst(
	
	.c(cuenta),
	.d(d),
	.comp(salida_circuito)
	
);

contador_10_bits cont_inst(
	.clk(clk_cont),
		.reset(reset),
		//.rco(rco),
		.cuenta(cuenta)
);

endmodule