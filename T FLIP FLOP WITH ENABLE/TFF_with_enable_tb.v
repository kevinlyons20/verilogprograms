module tff_with_enable_tb;
reg t,clk,en;
wire q;
tff_with_enable dut(.t(t),.clk(clk),.en(en),.q(q));
initial begin
    $dumpfile("tflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b en=%b t=%b  q=%b",clk,en,t,q);
    clk=1;en=0;t=1;
    #5;clk=0;
    #5;clk=1;en=1;t=0;
    #5;clk=0;
    #5;clk=1;t=1;
    #5;$finish;
end
endmodule
