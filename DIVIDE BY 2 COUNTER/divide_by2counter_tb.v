module divide_by_2_counter_tb;
reg clk,rst;
wire q;
always #5 clk=~clk;
divide_by_2_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("divby2count.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
