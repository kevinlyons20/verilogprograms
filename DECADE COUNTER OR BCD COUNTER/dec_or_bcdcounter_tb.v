module decade_or_bcdcounter_tb;
reg clk,rst;
wire [3:0]q;
always #5 clk=~clk;
decade_or_bcdcounter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("mod10counter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%d",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #80;$finish;
end
endmodule
