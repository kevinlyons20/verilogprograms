module jkff_with_enable_tb;
reg j,k,clk,en;
wire q;
jkff_with_enable dut(.j(j),.k(k),.clk(clk),.en(en),.q(q));
always #5 clk=~clk;
integer i;
initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b en=%b j=%b k=%b  q=%b",clk,en,j,k,q);
    clk=0;en=0;j=1;k=0;
    #10;en=1;j=0;
    #10;k=1;
    #10;j=1;k=0;
    #10;k=1;
    #5;$finish;
end
endmodule
