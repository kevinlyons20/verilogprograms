module jkflipflop_tb;
reg j,k,clk;
wire q;
jkflipflop dut(.j(j),.k(k),.clk(clk),.q(q));
initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b j=%b k=%b q=%b",clk,j,k,q);
    clk=0; j=0; k=0;
    #5 clk=1;
    #5 clk=0; j=0; k=1;
    #5 clk=1;
    #5 clk=0; j=1; k=0;
    #5 clk=1;
    #5 clk=0; j=1; k=1;
    #5 clk=1;
    #5 clk=0; j=1; k=1;
    #5 clk=1;
    #5 $finish;
end
endmodule
