module dflip_async_reset_tb;
reg d,clk,reset;
wire q;
dflip_async_reset dut(.d(d),.clk(clk),.reset(reset),.q(q));
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("reset=%b  clk=%b d=%b   q=%b",reset,clk,d,q);
    clk=0;reset=1;d=1;
    #10;reset=0;d=0;
    #5;d=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
