module odd_parity(
  input[3:0]a,
  output [4:0]y
);
  assign y[4]=~(a[0]^a[1]^a[2]^a[3]);
  assign y[3:0]=a[3:0];
endmodule
