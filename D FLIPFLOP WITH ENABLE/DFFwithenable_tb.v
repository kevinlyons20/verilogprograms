module DFFwithenable_tb;
reg d,clk,en;
wire q;
DFFwithenable dut(.d(d),.clk(clk),.en(en),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b en=%b d=%b q=%b",clk,en,d,q);
    clk=0;en=0;d=1;
    #10;en=1;d=0;
    #10;d=1;
    #5;$finish;
end
endmodule
