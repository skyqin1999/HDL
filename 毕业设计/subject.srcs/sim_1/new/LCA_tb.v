`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 12:13:15
// Design Name: 
// Module Name: LCA_tb
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


module LCA_tb();

    reg [7:0]a;
    reg[7:0]b;
    reg cin,clk;
    wire ref_cout,yours_cout;
    wire [7:0]ref_sum;
    wire [7:0]yours_sum;
    
    initial 
        begin
            #1
            a = 8'b0000_0000;
            b = 8'b0000_0000;
            cin = 0;
            clk = 0;
        end
    always #5 clk = ~clk;
    always @(posedge clk)
        begin
            a = {$random}%127;
            b = {$random}%127;
            cin = {$random}%2;
        end

    
    LCA_top lca(
        .a(a),
        .b(b),
        .cin(cin),
        .ref_cout(ref_cout),
        .yours_cout(yours_cout),
        .ref_sum(ref_sum),
        .yours_sum(yours_sum)
    );

endmodule
