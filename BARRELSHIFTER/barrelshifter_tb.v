module barrelshifter_tb;
  reg [3:0]a;
  reg [2:0]s;
  wire [3:0]b;
  barrelshifter dut(.a(a),.s(s),.b(b));
  integer i;
  initial begin
    $monitor("a=%b s=%b b=%b",a,s,b);
    a=4'b1010;
    for(i=0;i<8;i=i+1) begin
      s=i;
      #5;
    end
  end
endmodule
