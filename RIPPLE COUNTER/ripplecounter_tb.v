module ripple_up_down_counter_tb;
reg clk, rst, direction;
wire [3:0] q;
ripple_up_down_counter dut(
    .clk(clk),
    .rst(rst),
    .direction(direction),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("ripple_up_down_counter.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b rst=%b direction=%b q=%d",$time, clk, rst, direction, q);
    clk = 0;
    rst = 1;
    direction = 1;
    #10;
    rst = 0;
    #150;
    direction = 0;
    #150;
    $finish;
end
endmodule
