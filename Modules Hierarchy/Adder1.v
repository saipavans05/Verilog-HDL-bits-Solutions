module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1 ;
    wire [15:0]sum2 ;
    wire cout1 , cout2 , cin ;
    assign cin = 1'b0 ;
    add16 inst1 ( a[15:0] , b[15:0] , cin , sum1 , cout1 );
    add16 inst2 ( a[31:16] , b[31:16] , cout1 , sum2 , cout2 );
    assign sum = { sum2 , sum1 };
endmodule
