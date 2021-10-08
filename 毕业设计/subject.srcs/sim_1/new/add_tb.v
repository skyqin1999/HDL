`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 07:56:26
// Design Name: 
// Module Name: add_tb
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


module add_tb();

    reg a,b,cin,clk;
    wire ref_cout,yours_cout,ref_sum,yours_sum;
    
    initial begin
        a = 0;b=0;
        
        #10 a=0;b=0;
        #10 a=0;b=1;
        #10 a=1;b=0;
        #10 a=1;b=1;
        
    
    end
    initial 
        begin
            #1
            a = 0;
            b = 0;
            cin = 0;
            clk = 0;
        end
    always #5 clk = ~clk;
    always @(posedge clk)
        begin
            a = {$random}%2;
            b = {$random}%2;
            cin = {$random}%2;
        end

    
    add_top add(
        .a(a),
        .b(b),
        .cin(cin),
        .ref_cout(ref_cout),
        .yours_cout(yours_cout),
        .ref_sum(ref_sum),
        .yours_sum(yours_sum)
    );

endmodule
