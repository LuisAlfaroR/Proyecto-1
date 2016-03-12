
module Selector_Funcion(
    input sel,
    output func,
    output ENf,
    output ENi
    );

assign func=sel;
assign ENf=~sel;
assign ENi=sel;

endmodule
