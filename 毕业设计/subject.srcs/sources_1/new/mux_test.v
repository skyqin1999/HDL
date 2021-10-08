
`timescale 1ns / 1ps

module mux_test( 
    input a, b, sel,
    output out );
    
    assign out = (sel) ? b : a;
    
endmodule