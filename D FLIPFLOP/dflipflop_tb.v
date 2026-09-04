module dflipflop_tb;
reg d,clk;
wire q;
dflipflop dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("dflip.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b  d=%b  q=%b",clk,d,q);
    clk=0;d=0;
    #10;d=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
