`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 18:51:33
// Design Name: 
// Module Name: computer_top
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


module computer_top(
    input wire rst,
    input wire clk,
    input wire [1:0] sw,
    input wire [3:0] in,
    output wire [6:0] seg_a,
    output wire [6:0] seg_b,
    output wire [6:0] seg_c,
    output wire [6:0] seg_d
    );
    wire [3:0]regsiter_out;
    wire [7:0] computer_out;
    regsiter4 regsiter(
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(regsiter_out)
    );
    computer computer(
        .sw(sw),
        .a(regsiter_out),
        .b(in),
        .out(computer_out) 
    );
    bcd3 bcd(
        .a(regsiter_out),
        .b(in),
        .c(computer_out),
        .Seg_a_out(seg_a),
        .Seg_b_out(seg_b),
        .Seg_c_out(seg_c),
        .Seg_d_out(seg_d)
    );
    
endmodule
