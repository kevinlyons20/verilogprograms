module clock_divider_by4_tb;
reg clk,rst;
wire clk_out;
always #5 clk=~clk;
clock_divider_by4 dut(.clk(clk),.rst(rst),.clk_out(clk_out));
initial begin
    $dumpfile("clockdiv.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b clk_out=%b",clk,rst,clk_out);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
