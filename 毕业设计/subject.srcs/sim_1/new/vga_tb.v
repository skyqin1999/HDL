`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 16:21:52
// Design Name: 
// Module Name: vga_tb
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


module vga_tb(
);

    reg clk,rst;
    wire hsync;
    wire vsync;
    wire [3:0]    vga_r;
    wire [3:0]    vga_g;
    wire [3:0]    vga_b;
    
    always #5 clk=~clk;
    initial begin
        clk = 0;rst=0;
        
        #500 rst=1;
        #300 rst=0;
    
    end
    vga_show show(
    .clk(clk),
    .rst(rst),
        .hsync(hsync),
        .vsync(vsync),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
    );

endmodule
