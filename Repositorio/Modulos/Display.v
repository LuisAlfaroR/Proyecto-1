`timescale 1ns / 1ps
module Display(

	input selector,	//1 -> corriente: 0 -> frecuencia
	input clk,rst,
	input [9:0] corriente,
	input [7:0]frecuencia,
	output wire [7:0] catodos,
	output wire [3:0] anodos
	);

wire [1:0] contador;

Contador2Bit Contador (
    .clk(clk), 
    .reset(rst), 
    //.rco(rco),
	 .cuenta_reg(contador)
    );
	 
decodificador7seg Decodificador (
    .selector(selector), 
    .corriente(corriente), 
    .frecuencia(frecuencia), 
    .cont(contador), 
    .catodos(catodos), 
    .anodos(anodos)
    );


endmodule
