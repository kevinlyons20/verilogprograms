module multiplexer2_1(
    input a,b,s,
    output y
);
assign y=(~s & a) | (s & b);
endmodule
