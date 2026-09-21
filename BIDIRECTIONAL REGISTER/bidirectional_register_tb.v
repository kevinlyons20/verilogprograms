module bidirshiftreg_tb;
reg d,clk,direction;
wire [3:0]q;
bidirshiftreg dut(.d(d),.clk(clk),.direction(direction),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("shiftreg.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b d=%b q=%b",clk,d,q);
    d=1;clk=0;direction=1;
    #10;d=0;
    #10;d=0;direction=0;
    #10;d=1;
    #10;d=1;
    #10;d=0;direction=1;
    #10;$finish;
end
endmodule
