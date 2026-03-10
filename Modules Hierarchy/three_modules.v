module top_module ( input clk, input d, output q );
    wire q0,q1; 
    my_dff ( clk , d, q0 ) ;
    my_dff ( clk , q0, q1 ) ;
    my_dff ( clk , q1, q ) ;
endmodule
