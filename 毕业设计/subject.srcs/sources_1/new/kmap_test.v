`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 08:04:01
// Design Name: 
// Module Name: kmap_test
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


module kmap_test(
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos  ); 
    
    assign out_sop = (c&d) | (~a&~b&c&~d);
    assign out_pos = ~((~c | ~d) & (a | b | ~c));


endmodule