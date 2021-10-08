`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 07:09:58
// Design Name: 
// Module Name: mux_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_tb();

    reg a,b,sel;
    wire ref,yours;
    
    initial begin
        a = 0;b=0;sel=0;
        
        #10 a=0;b=0;sel=0;
        #10 a=0;b=1;sel=0;
        #10 a=1;b=0;sel=0;
        #10 a=1;b=1;sel=0;
        
        #10 a=0;b=0;sel=1;
        #10 a=0;b=1;sel=1;
        #10 a=1;b=0;sel=1;
        #10 a=1;b=1;sel=1;
    
    end
    mux_top mux(
        .a(a),
        .b(b),
        .sel(sel),
        .ref(ref),
        .yours(yours)
    );

endmodule
