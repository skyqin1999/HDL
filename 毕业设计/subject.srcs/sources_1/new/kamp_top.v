`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 08:04:01
// Design Name: 
// Module Name: kamp_top
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


module kamp_top(
    input a,b,c,d,
    output ref_out_sop,yours_out_sop,ref_out_pos,yours_out_pos
    );
    
    kmap_test kmap_test(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out_sop(ref_out_sop),
        .out_pos(ref_out_pos)
    );
    
    kmap_diy kmap_diy(
            .a(a),
            .b(b),
            .c(c),
            .d(d),
            .out_sop(yours_out_sop),
            .out_pos(yours_out_pos)
        );
    
endmodule
