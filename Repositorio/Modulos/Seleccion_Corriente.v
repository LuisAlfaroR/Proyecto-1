`timescale 1ns / 1ps

module Seleccion_Corriente(
    input [1:0]botones,
    input clk,ENi,rst,
    output [6:0]I, output [9:0] I_deco
    );

wire [3:0]corriente_seleccionada;
wire frecuencia_selector_corriente;
wire BUFG_frecuencia_selector_frecuencia;

//Divisor de frecuencia para contador que se desplaza entre frecuencias
Divisor_de_Frecuencia Frecuencia_Selector_frecuencia (
    .clk(clk), 
    .clk_out(BUFG_frecuencia_selector_frecuencia)
    );

//Buffer para el clk del contador
BUFG BUFG_Frecuencia_Selector (
      .O(frecuencia_selector_corriente),     
      .I(BUFG_frecuencia_selector_frecuencia)      
   );
	
Contador_0_15 Contador_corriente (
    .clk(frecuencia_selector_corriente),
	 .EN(ENi),
    .up(botones[1]), 
    .down(botones[0]), 
    .rst(rst), 
    .out(corriente_seleccionada)
    );

Memoria_corrientes Corrientes_registradas (
    .corriente(corriente_seleccionada), 
    .rst(rst), 
    .I(I),
	 .I_deco(I_deco)
    );

endmodule
