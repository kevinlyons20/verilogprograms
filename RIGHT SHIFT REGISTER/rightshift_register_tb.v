module rightshiftreg_tb;
reg d,clk;
wire [3:0]q;
rightshiftreg dut(.d(d),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("shiftreg.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b d=%b q=%b",clk,d,q);
    d=1;clk=0;
    #10;d=0;
    #10;d=0;
    #10;d=1;
    #10;d=1;
    #10;d=0;
    #10;$finish;
end
endmodule
