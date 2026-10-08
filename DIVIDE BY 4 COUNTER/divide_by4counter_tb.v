module divide_by_4_counter_tb;
reg clk,rst;
wire [1:0]q;
always #5 clk=~clk;
divide_by_4_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("divby4count.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
