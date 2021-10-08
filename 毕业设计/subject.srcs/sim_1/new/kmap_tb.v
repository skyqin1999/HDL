`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 08:30:58
// Design Name: 
// Module Name: kmap_tb
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


module kmap_tb();

    reg a,b,c,d;
    wire ref_out_sop,yours_out_sop,ref_out_pos,yours_out_pos;
    
    initial begin
        a = 0;b=0;c=0;d=0;
        
        #10 a=0;b=0;c=0;d=0;
        #10 a=0;b=1;c=0;d=0;
        
        #10 a=0;b=0;c=0;d=1;
        #10 a=0;b=1;c=0;d=1;
        #10 a=1;b=1;c=0;d=1;
        #10 a=1;b=0;c=0;d=1;
        
        #10 a=0;b=1;c=1;d=1;
        #10 a=1;b=1;c=1;d=1;
        
        #10 a=0;b=1;c=1;d=0;
        #10 a=1;b=1;c=1;d=0;
        #10 a=1;b=0;c=1;d=0;

    
    end
    kamp_top kamp(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .ref_out_sop(ref_out_sop),
        .yours_out_sop(yours_out_sop),
        .ref_out_pos(ref_out_pos),
        .yours_out_pos(yours_out_pos)
    );

endmodule
