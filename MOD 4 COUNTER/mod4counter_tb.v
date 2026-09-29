module mod4_counter_tb;
reg clk,rst;
wire [1:0]q;
always #5 clk=~clk;
mod4_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("mod4counter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #30;$finish;
end
endmodule
