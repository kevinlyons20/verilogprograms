module binary_counter_rst_tb;
reg clk,rst;
wire [3:0]q;
binary_counter_rst dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
     $dumpfile("counter.vcd");
     $dumpvars(0,dut);
     $monitor("clk=%b rst=%b q=%d",clk,rst,q);
     clk=1;rst=1;
     #5;rst=0;
     #120; $finish;
end
endmodule
