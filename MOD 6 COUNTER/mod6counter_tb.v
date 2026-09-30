module mod6_counter_tb;
reg clk,rst;
wire [2:0]q;
always #5 clk=~clk;
mod6_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("mod6counter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
