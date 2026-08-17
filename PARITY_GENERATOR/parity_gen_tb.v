module parity_gen_tb;
  reg [2:0]a;
  wire [3:0]b;
  parity_gen dut(.a(a),.b(b));
  integer i;
  initial begin
    $dumpfile("parity_gen.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  b=%b",a,b);
    for(i=0;i<16;i=i+1) begin
      a=i;
      #5;
    end
  end
endmodule
