`timescale 1ns / 1ps

module mux_top( 
    input a, b, sel,
    output ref,yours );
    
    
    mux_test mux_test(
            .a(a),
            .b(b),
            .sel(sel),
            .out(ref)
        );
    
    
    mux_diy mux_diy(
        .a(a),
        .b(b),
        .sel(sel),
        .out(yours)
    );
    
endmodule