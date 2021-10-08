`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 09:57:08
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb();

    reg clk,d;
    wire q;
    
    always #10 clk=~clk;
    initial begin
        clk = 0;d=0;
        
        #50 d=1;
        #30 d=0;
        #20 d=1;
    
    end
    DFF_top dff(
        .clk(clk),
        .d(d),
        .q(q)
    );

endmodule
