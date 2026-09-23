module counter_2bit_tb;
reg clk,rst;
wire [1:0]q;
counter_2bit dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("counter2bit.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t  clk=%b rst=%b q=%d",$time,clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #40;$finish;
end
endmodule
