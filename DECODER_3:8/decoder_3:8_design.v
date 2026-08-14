module decoder(
  input [2:0]a,
  output reg [7:0]y
);
  integer i;
  always@(*) begin
    y=8'd0;
    for(i=0;i<8;i=i+1) begin
      if(i==a)
        y[i]=1;
    end
  end
endmodule
  
