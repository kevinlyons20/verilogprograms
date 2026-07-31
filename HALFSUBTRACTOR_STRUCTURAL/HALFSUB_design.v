module halfsub(
    input a,b,
    output diff,bin
);
xor x1(diff,a,b);
not n1(c,a);
and a1(bin,c,b);
endmodule
