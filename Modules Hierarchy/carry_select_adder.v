module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1,cout2,cout3 ;
    wire [15:0]sum0 ;
    wire [15:0]sum1 ;
    wire [15:0]sum2 ;
    add16 inst1(a[15:0],b[15:0],0,sum0[15:0],cout1);
    add16 inst2(a[31:16],b[31:16],0,sum1[15:0],cout2);
    add16 inst3(a[31:16],b[31:16],1,sum2[15:0],cout3);
    always @ (*) begin 
        if(!cout1)
            sum = {sum1 ,sum0} ;
        else
            sum = {sum2 ,sum0} ;
    end
endmodule
