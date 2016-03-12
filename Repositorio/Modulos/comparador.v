`timescale 1ns / 1ps

module comparador(
	input wire [6:0]c,
	input wire [6:0]d,
	output reg comp
);
	always@*
      if ((d > c)|(d==7'd100))
         comp <= 1'b1;
      else
         comp <= 1'b0;

endmodule

