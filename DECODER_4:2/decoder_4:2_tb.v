module decoder_tb;
  reg [1:0]a;
  wire[3:0]y;
  decoder dut(.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<4;i=i+1) begin
      {a}=i;
      #5;
    end
  end
    endmodule
