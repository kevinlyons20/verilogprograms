module even_parity(
  input[4:0]a,
  output reg [5:0]b
);
  integer i;
  integer count;
  always@(*) begin
      count=0;
    for(i=0;i<5;i=i+1) begin
      if(a[i])
        count=count+1;
    end
    if(count%2==0)
      b[5]=0;
    else
      b[5]=1;
    b[4:0]=a[4:0];
  end
endmodule
