module async_upcounter_4bit_tb;
reg clk,rst;
wire [3:0]q;
async_upcounter_4bit dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("asynchupcounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%d",clk,rst,q);
    clk=1;rst=1;
    #5;rst=0;
    #150;$finish;
end
endmodule
