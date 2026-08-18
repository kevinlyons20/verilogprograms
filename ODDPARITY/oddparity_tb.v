module odd_parity_tb;
  reg [3:0]a;
  wire [4:0]y;
  odd_parity dut(.a(a),.y(y));
  initial begin
    $dumpfile("odd_parity.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  y=%b",a,y);
    a=4'b1011;
  end
endmodule
