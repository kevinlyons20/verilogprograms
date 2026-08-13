module decoder_tb;
  reg a;
  wire [1:0]y;
  decoder dut(.a(a),.y(y));
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=0;
    #5;
    a=1;
    #5;
    $finish;
  end
endmodule
