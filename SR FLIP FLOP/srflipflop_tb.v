module srflipflop_tb;
reg s,r,clk;
wire q;
srflipflop dut(.s(s),.r(r),.clk(clk),.q(q));
initial begin
    $dumpfile("srflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b s=%b r=%b q=%b",clk,s,r,q);
    clk=0;s=0;r=1;
    #10;r=0;
    #10;s=1;r=0;
    #10;r=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
