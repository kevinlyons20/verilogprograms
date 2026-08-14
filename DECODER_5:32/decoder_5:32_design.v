module decoder(
  input [4:0]a,
  output reg [31:0]y
);
  integer i;
  always@(*) begin
    y=32'd0;
    for(i=0;i<32;i=i+1) begin
      if(i==a)
        y[i]=1;
    end
  end
endmodule
