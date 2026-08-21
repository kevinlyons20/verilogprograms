module circularshift_tb;
  reg [3:0]a;
  reg [1:0]s;
  reg d;
  wire [3:0]y;
  circular_shifter dut(.a(a),.s(s),.d(d),.y(y));
  initial begin
    $monitor("a=%b s=%b d=%b y=%b",a,s,d,y);
    a=4'b1010;s=2'b01;d=0;
    #5;
    s=2'b10;
    d=1;
    #5;
    $finish;
  end
endmodule
