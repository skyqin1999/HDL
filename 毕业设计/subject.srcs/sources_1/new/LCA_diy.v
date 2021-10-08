`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 10:58:33
// Design Name: 
// Module Name: LCA_diy
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


module LCA_diy(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire cin,
    output wire [7:0] sum,
    output wire cout
    );
    
    wire [7:0] c,g, p;
    
    assign g=a&b;
    assign p=a|b;

    
    assign cout=cin;
    assign c[0]=g[0]|p[0]&cout;
    assign c[1]=g[1]|p[1]&c[1];
    assign c[2]=g[2]|p[2]&c[2];
    assign c[3]=g[3]|p[3]&c[3];
    assign c[4]=g[4]|p[4]&c[4];
    assign c[5]=g[5]|p[5]&c[5];
    assign c[6]=g[6]|p[6]&c[6];
    assign c[7]=g[7]|p[7]&c[7];
    
    assign sum=p^c;
    assign cout = c[7];

endmodule
