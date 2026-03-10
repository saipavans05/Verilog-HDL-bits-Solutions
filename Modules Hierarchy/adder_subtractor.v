module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]xor_o ;
    wire cout1,cout2;
    always @ (*) begin
        if(sub)
            xor_o = ~b ;
        else
            xor_o = b ;
    end
    add16 inst1(a[15:0],xor_o[15:0],sub,sum[15:0],cout1);
    add16 inst2(a[31:16],xor_o[31:16],cout1,sum[31:16],cout2);
endmodule
