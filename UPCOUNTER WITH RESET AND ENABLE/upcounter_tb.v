module upcounter_withrst_enable_tb;
reg clk,rst,en;
wire [3:0]q;
always #5 clk=~clk;
upcounter_withrst_enable dut(.clk(clk),.rst(rst),.en(en),.q(q));
initial begin
    $dumpfile("upcounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b en=%b q=%b",clk,rst,en,q);
    clk=1;rst=1;
    #5;rst=0;en=1;
    #20;en=0;
    #10;en=1;
    #50;$finish;
end
endmodule
