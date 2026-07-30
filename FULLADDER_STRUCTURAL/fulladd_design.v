module fulladder(
    input a,b,c,
    output sum,carry
);
wire x,y,z;
xor x1(x,a,b);
xor x2(sum,x,c);
and a1(y,a,b);
and a2(z,x,c);
or o1(carry,y,z);
endmodule
