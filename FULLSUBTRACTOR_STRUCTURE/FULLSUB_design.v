module fullsub(
    input a,b,bin,
    output diff,bout
);
wire c,d1,d2,d3;
xor x1(diff,a,b,bin);
not n1(c,a);
and a1(d1,c,b);
and a2(d2,b,bin);
and a3(d3,c,bin);
or o1(bout,d1,d2,d3);
endmodule
