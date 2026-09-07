module masterslavejk_tb;
reg j,k,clk;
wire q;
masterslavejk dut(.j(j),.k(k),.clk(clk),.q(q));
initial begin
    $dumpfile("masterslave.vcd");
    $dumpvars(0,dut);
    $monitor(" time=%d clk=%b j=%b  k=%b q=%b",$time,clk,j,k,q);
    clk=0;j=0;k=0;
    #5;k=1;
    #10;j=1;k=0;
    #10;j=1;k=1;
    #10;$finish;
end
always #5 clk=~clk;
endmodule
