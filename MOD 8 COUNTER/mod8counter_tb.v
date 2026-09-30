module mod8_counter_tb;
reg clk,rst;
wire [2:0]q;
always #5 clk=~clk;
mod8_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("mod8counter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #60;$finish;
end
endmodule
