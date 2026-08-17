module parity_gen(
  input [2:0]a,
  output [3:0]b
);
  assign b[3]=a[0]^a[1]^a[2];
  assign b[2:0]=a[2:0];
endmodule
