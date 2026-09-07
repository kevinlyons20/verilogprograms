module dflipflop_tb;
reg d,clk,rst;
wire q;
dflipflop dut(.d(d),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("rst=%b  clk=%b  d=%b     q=%b",rst,clk,d,q);
    rst=1;clk=0;
    #5;rst=0;d=0;
    #5;d=1;
    #10;$finish;
end
always #5 clk=~clk;
endmodule
