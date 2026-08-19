module alu_4bit_tb;
  reg [3:0]a,b;
  reg [2:0]s;
  wire [7:0]y;
  alu_4bit dut(.a(a),.b(b),.s(s),.y(y));
  integer i,j;
  initial begin
    $monitor("a=%b  b=%b  s=%b  y=%b",a,b,s,y);
    for(i=0;i<256;i=i+1) begin
      for(j=0;j<8;j=j+1) begin
      {a,b}=i;
        s=j;
      #5;
    end
    end
    $finish;
  end
endmodule
