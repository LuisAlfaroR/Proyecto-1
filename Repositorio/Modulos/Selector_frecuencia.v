
module Selector_frecuencia(
    input ENf,rst,clk,
    input [1:0] botones,
    output [25:0]f
    );

wire [2:0]frecuencia_seleccionada;
/*reg var;

always@(posedge clk)begin
	var=botones[1]+botones[0];end*/

Contador_0_7 Contador (
    .clk(clk),
	 .EN(ENf),
    .up(botones[1]), 
    .down(botones[0]), 
    .rst(rst), 
    .out(frecuencia_seleccionada)
    );
	 
Memoria_frecuencias Frecuencias_registradas(
    .rst(rst), 
    .fre(frecuencia_seleccionada), 
    .fre_sel(f)
    );
endmodule
