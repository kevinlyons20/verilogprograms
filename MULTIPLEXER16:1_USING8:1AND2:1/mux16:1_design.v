module mux_16_1(
    input [15:0]a,
    input [3:0]s,
    output y
);
wire [1:0]b;
mux_8_1 m1(a[7:0],s[2:0],b[0]);
mux_8_1 m2(a[15:8],s[2:0],b[1]);
mux_2_1 n1(b[1:0],s[3],y);
endmodule
module mux_8_1(
    input [7:0]a,
    input [2:0]s,
    output y
);
assign y=a[s];
endmodule
module mux_2_1(
    input [1:0]a,
    input s,
    output y 
);
assign y=a[s];
endmodule
