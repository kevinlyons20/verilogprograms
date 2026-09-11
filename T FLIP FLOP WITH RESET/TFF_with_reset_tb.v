module tff_with_reset_tb;
reg t,clk,rst;
wire q;
tff_with_reset dut(.t(t),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("tflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b t=%b   q=%b",clk,rst,t,q);
    clk=1;rst=1;t=1;
    #5;clk=0;
    #5;clk=1;rst=0;t=0;
    #5;clk=0;
    #5;clk=1;t=1;
    #5;$finish;
end
endmodule
