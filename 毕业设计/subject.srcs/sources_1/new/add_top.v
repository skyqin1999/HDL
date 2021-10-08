`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 07:51:15
// Design Name: 
// Module Name: add_top
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


module add_top(
    input a, b,cin,
    output ref_cout,yours_cout, ref_sum,yours_sum );
    
    add_test add_test(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(ref_cout),
        .sum(ref_sum)
    );
    
    add_diy add_diy(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(yours_cout),
        .sum(yours_sum)
    );
    
    
endmodule
