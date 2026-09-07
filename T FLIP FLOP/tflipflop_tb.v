module tflipflop_tb;
reg t,clk;
wire q;
tflipflop dut(.t(t),.clk(clk),.q(q));
initial begin
    $dumpfile("tflipflop.vcd");
    $dumpvars(0,dut);
    $monitor(" clk=%b t=%b q=%b ",clk,t,q);
    clk=0;t=1;
    #10;t=0;
    #10;t=1;
    #5;$finish;
end
always #5 clk=~clk;
endmodule
