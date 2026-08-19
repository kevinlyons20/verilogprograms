module alu_8bit_tb;
  reg [7:0]a,b;
  reg [2:0]s;
  wire [15:0]y;
  alu_8bit dut(.a(a),.b(b),.s(s),.y(y));
  integer i;
  initial begin
    $monitor("a=%b b=%b s=%b y=%b",a,b,s,y);
    a=8'd5;b=8'd15;
    for(i=0;i<8;i=i+1) begin
      s=i;
      #5;
    end
  end
endmodule
