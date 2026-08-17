module priority_encoder;
  reg [7:0]a;
  wire [2:0]y;
  priority_encoder83 dut(.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("priority_encoder83.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  y=%b",a,y);
    for(i=0;i<512;i=i+1) begin
      {a}=i;
      #5;
    end
  end
endmodule
