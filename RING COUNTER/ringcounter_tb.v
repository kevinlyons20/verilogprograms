module ring_counter_tb;
reg clk,rst;
wire [3:0]q;
ring_counter dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("ringcounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #20;$finish;
end
endmodule
