module logicalshift_tb;
  reg [7:0]a;
  wire [7:0]b;
  logicalrightshift dut(.a(a),.b(b));
  initial begin
    $monitor("a=%b b=%b",a,b);
    a=8'b10101010;
    #5;
    $finish;
  end
endmodule
