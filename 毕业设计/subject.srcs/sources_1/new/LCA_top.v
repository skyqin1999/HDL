`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 10:58:33
// Design Name: 
// Module Name: LCA_top
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


module LCA_top(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire cin,
    output wire [7:0] ref_sum,
    output wire [7:0] yours_sum,
    output wire ref_cout,
    output wire yours_cout
    );
    LCA_test LCA_test(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(ref_sum),
        .cout(ref_cout)
    );
    
    LCA_diy LCA_diy(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(yours_sum),
        .cout(yours_cout)
    );
    
endmodule
