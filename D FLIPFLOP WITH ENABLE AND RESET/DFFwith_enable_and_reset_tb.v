module dff_enable_reset_tb;
reg d,clk,en,rst;
wire q;
dff_enable_reset dut(.d(d),.clk(clk),.rst(rst),.en(en),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b en=%b d=%b q=%b",clk,rst,en,d,q);
    rst=1;clk=0;en=0;d=1;
    #10;rst=0;d=1;
    #10;rst=0;en=1;d=0;
    #10;d=1;
    #5;$finish;
end
endmodule
