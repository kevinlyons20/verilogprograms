module divide_by_10_counter_tb;
reg clk,rst;
wire [3:0]q;
always #5 clk=~clk;
divide_by_10_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("divby10count.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #150;$finish;
end
endmodule
