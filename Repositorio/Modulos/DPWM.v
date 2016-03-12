
module DPWM(

	input [1:0] botones,
	input rst,
	input funcion,
	input clk,
	output senal,
	output [7:0] catodos,
	output [3:0] anodos
    );

wire BUFG_frecuencia_seleccionada;
wire [5:0] frecuencia_seleccionada;
wire [6:0] corriente_seleccionada;
wire enable_selector_frecuencia;
wire enable_selector_corriente;
wire selector_display;
wire [9:0]corriente_a_mostrar;
wire [7:0]frecuencias_a_mostrar;
wire clk_contador_PWM;
wire clk_display;


//Seleccion de cambio de frecuencia o corriente
Selector_Funcion Selecionar_funcion (
    .sel(funcion), 
    .func(selector_display), 
    .ENf(enable_selector_frecuencia), 
    .ENi(enable_selector_corriente)
    );

//Cambio de frecuencia
Seleccion_frecuencia Cambiar_frecuencia (
    .ENf(enable_selector_frecuencia), 
    .rst(rst), 
    .clk(clk), 
    .botones(botones), 
    .f(frecuencia_seleccionada),
	 .f_deco(frecuencias_a_mostrar)
    );

//Divisor de frecuencia que determina la frecuencia del PWM	 
Divisor_Frecuencia Frecuencia_Contador_PWM (
    .clk(clk), 
    .donde(frecuencia_seleccionada), 
    .clk_out(BUFG_frecuencia_seleccionada)
    );

//Buffer que se conecta al clk del contador del PWM
BUFG BUFG_Frecuencia_Contador (
      .O(clk_contador_PWM),     
      .I(BUFG_frecuencia_seleccionada)      
   );

//Cambiar la corriente	 
Seleccion_Corriente Cambiar_corriente ( 
    .botones(botones), 
    .clk(clk), 
    .ENi(enable_selector_corriente), 
    .rst(rst), 
    .I(corriente_seleccionada),
	 .I_deco(corriente_a_mostrar)
    );
	 
//Modulo donde se controla que se muestra en los display
Display Display (
    .selector(selector_display), 
    .clk(clk_display), 
    .rst(~rst), 
    .corriente(corriente_a_mostrar), 
    .frecuencia(frecuencias_a_mostrar), 
    .catodos(catodos), 
    .anodos(anodos)
    );
	 
//PWM
PWM PWM (
	 .clk_cont(clk_contador_PWM),
    .reset(~rst), 
    .d(corriente_seleccionada), 
    .salida_circuito(senal)
    );
	 
 divisor_frecuencia_displey sfd (
    .clk(clk),
    .clk_out(clk_display)
    );

endmodule
