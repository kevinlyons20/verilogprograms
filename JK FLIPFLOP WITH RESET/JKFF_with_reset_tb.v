module jkff_with_reset_tb;
reg j,k,clk,rst;
wire q;
jkff_with_reset dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
integer i;
initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b j=%b k=%b q=%b",clk,rst,j,k,q);
    clk=0;rst=1;j=0;k=0;
    #10;rst=0;
    for(i=1;i<4;i=i+1) begin
        {j,k}=i;
        #10;
    end
    #5;$finish;
end
endmodule
