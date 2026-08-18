module parity_gen(
  input [3:0]a,
  input s,
  output reg [4:0]b
);
  always@(*) begin
    if(s) 
      b[4]=a[0]^a[1]^a[2]^a[3];
    else
      b[4]=~(a[0]^a[1]^a[2]^a[3]);
    b[3:0]=a[3:0];
  end
endmodule
      
  
