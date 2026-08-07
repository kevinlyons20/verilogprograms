module mux_32_1(
    input [31:0]a,
    input [4:0]s,
    output y
);
assign y=a[s];
endmodule
