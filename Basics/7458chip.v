module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire w1,w2,w3,w4,w5,w6;
    and g1 (w1,p2a,p2b);
    and g2 (w2,p2c,p2d);
    or g3 (w3,w1,w2);
    and g4 (w4,p1a,p1c,p1b);
    and g5 (w5,p1f,p1e,p1d);
    or g6 (w6,w4,w5);
    buf g7 (p2y,w3);
    buf g8 (p1y,w6);
endmodule
