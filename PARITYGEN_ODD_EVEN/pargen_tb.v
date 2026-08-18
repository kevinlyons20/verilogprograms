module parity_gen_tb;
  reg [3:0]a;
  reg s;
  wire[4:0]b;
  parity_gen dut(.a(a),.b(b),.s(s));
  initial begin
    $monitor("a=%b s=%b b=%b",a,s,b);
    a=4'b1011;s=1;
    #5;
    $finish;
  end
endmodule
  
