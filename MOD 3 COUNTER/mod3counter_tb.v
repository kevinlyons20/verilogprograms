module mod3_counter_tb;
reg clk,rst;
wire [1:0]q;
always #5 clk=~clk;
mod3_counter dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("mod3counter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #20;$finish;
end
endmodule
