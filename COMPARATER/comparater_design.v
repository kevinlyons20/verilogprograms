module comparater(
    input [4:0]a,b,
    output g,e,l
);
assign g=a>b;
assign l=a<b;
assign e=(a==b);
endmodule
