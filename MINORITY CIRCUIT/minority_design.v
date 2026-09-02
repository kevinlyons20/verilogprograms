module minority(
    input [2:0]a,
    output y
);
assign y = ~((a[0] & a[1]) | (a[1] & a[2]) | (a[0] & a[2]));
endmodule
