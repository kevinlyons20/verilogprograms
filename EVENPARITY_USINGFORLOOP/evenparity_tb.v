module even_parity_tb;
  reg [4:0]a;
  wire [5:0]b;
  even_parity dut(.a(a),.b(b));
  initial begin
    $dumpfile("even_parity.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  b=%b",a,b);
    a=4'b1010;
    #5;
    $finish;
  end
endmodule
    
