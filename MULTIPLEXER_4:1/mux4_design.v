module mux4_1(
    input [3:0]a,
    input s1,s2,
    output y
);
assign y=(~s1 & ~s2 & a[0]) | (~s1 & s2 & a[1]) | (s1 & ~s2 & a[2]) | (s1 & s2 & a[3]);
endmodule
