module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] p1,p2,p3 ;
    // assign intermediate_result1 = compare? true: false;
    assign p1 = (a < b) ? a : b ;
    assign p2 = (p1 < c) ? p1 : c ;
    assign p3 = (p2 < d) ? p2 : d ;
    assign min = p3 ;

endmodule
