`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:12 02/29/2016 
// Design Name: 
// Module Name:    decodificador7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decodificador7seg( 
	input selector, //1 -> corriente: 0 -> frecuencia
	input [9:0] corriente,
	input [7:0]frecuencia,
	input [1:0] cont,
	output reg [7:0] catodos,
	output reg [3:0] anodos
	);
	
	always @* begin
		
		catodos = 8'b11111111;
		anodos = 4'b1111;
	
		case (cont)
			2'b00: begin
				anodos = 4'b0111; //enciende primer digito
				
				if ((selector == 1) & (corriente == 10'd1000))
					catodos = 8'b10011111;
				
			end
			
			2'b01: begin
				anodos = 4'b1011;
				
				if ((selector == 1) & (corriente == 10'd100))
					catodos = 8'b10011111;
			   else if ((selector == 1) & (corriente == 10'd200))
					catodos = 8'b00100101;
				else if ((selector == 1) & (corriente == 10'd300))
					catodos = 8'b00001101;
				else if ((selector == 1) & (corriente == 10'd400))
					catodos = 8'b10011001;
				else if ((selector == 1) & (corriente == 10'd500))
					catodos = 8'b01001001;
				else if ((selector == 1) & (corriente == 10'd600))
					catodos = 8'b01000001;
				else if ((selector == 1) & (corriente == 10'd700))
					catodos = 8'b00011111;
				else if ((selector == 1) & (corriente == 10'd800))
					catodos = 8'b00000001;
				else if ((selector == 1) & (corriente == 10'd900))
					catodos = 8'b00001001;
				else if ((selector == 1) & (corriente == 10'd1000))
					catodos = 8'b00000011;

				else if ((selector == 0) & ((frecuencia == 8'd100)| (frecuencia == 8'd125) | (frecuencia == 8'd175)))
					catodos= 8'b10011111;
				else if ((selector == 0) & (frecuencia == 8'd250))
					catodos= 8'b00100101;	
				
				

				end
			
			2'b10: begin 
				anodos = 4'b1101;
				
				if ((selector == 1) & (corriente != 10'd0))
					catodos = 8'b00000011;
				else if ((selector == 0) & (frecuencia == 8'd30))
					catodos= 8'b00001101;
				else if ((selector == 0) & (frecuencia == 8'd50)| (frecuencia == 8'd250))
					catodos= 8'b01001001;
				else if ((selector == 0) & (frecuencia == 8'd75))
					catodos= 8'b00011111;
				else if ((selector == 0) & (frecuencia == 8'd100)) 
					catodos= 8'b00000011;
				else if ((selector == 0) & (frecuencia == 8'd125))
					catodos= 8'b00100101;
				else if ((selector == 0) & (frecuencia == 8'd10))
					catodos= 8'b10011111;
				else if ((selector == 0) & (frecuencia == 8'd175))
					catodos= 8'b00011111;
			end
			
			2'b11: begin 
				anodos = 4'b1110;
				if ((selector == 1))
					catodos = 8'b00000011;
				else if ((selector == 0) & ((frecuencia == 8'd75) | (frecuencia == 8'd125) | (frecuencia == 8'd175)))
					catodos= 8'b01001001;
				else if ((selector == 0) & ((frecuencia == 8'd30) |(frecuencia == 8'd10) | (frecuencia == 8'd50) | (frecuencia == 8'd100) | 
				(frecuencia == 8'd250)))
					catodos= 8'b00000011;

			
			end
		endcase
	end


endmodule
