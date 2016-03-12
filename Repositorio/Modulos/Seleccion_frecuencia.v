module Seleccion_frecuencia(
    input ENf,rst,clk,
    input [1:0] botones,
    output [5:0]f,output [7:0] f_deco
    );

wire [2:0]frecuencia_seleccionada;
wire frecuencia_selector_frecuencia;
wire BUFG_frecuencia_selector_frecuencia;

//Divisor de frecuencia para contador que se desplaza entre frecuencias
Divisor_de_Frecuencia Frecuencia_Selector_frecuencia (
    .clk(clk), 
    .clk_out(BUFG_frecuencia_selector_frecuencia)
    );

//Buffer para el clk del contador
BUFG BUFG_Frecuencia_Selector (
      .O(frecuencia_selector_frecuencia),     
      .I(BUFG_frecuencia_selector_frecuencia)      
   );

Contador_0_7 Contador_frecuencia (
    .clk(frecuencia_selector_frecuencia),
	 .EN(ENf),
    .up(botones[1]), 
    .down(botones[0]), 
    .rst(rst), 
    .out(frecuencia_seleccionada)
    );
	 
Memoria_frecuencias Frecuencias_registradas(
    .rst(rst), 
    .fre(frecuencia_seleccionada), 
    .fre_sel(f),
	 .fre_deco(f_deco)
    );
endmodule

