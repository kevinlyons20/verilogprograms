module DFFwith_setandrst_tb;
reg d,clk,set,rst;
wire q;
DFFwith_setandrst dut(.d(d),.clk(clk),.set(set),.rst(rst),.q(q));
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("set=%b rst=%b clk=%b d=%b    q=%b",set,rst,clk,d,q);
    set=0;rst=1;clk=0;
    #5;rst=0;set=1;
    #10;set=0;d=0;
    #10;d=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
