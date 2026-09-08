module DFFwith_set_tb;
reg d,clk,set;
wire q;
DFFwith_set dut(.d(d),.clk(clk),.set(set),.q(q));
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("set=%b clk=%b d=%b   q=%b",set,clk,d,q);
    set=1;clk=0;
    #5;set=0;d=0;
    #10;d=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
