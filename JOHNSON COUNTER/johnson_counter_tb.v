module johnson_counter_tb;
reg clk,rst;
wire [3:0]q;
johnson_counter dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("johnsoncounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
