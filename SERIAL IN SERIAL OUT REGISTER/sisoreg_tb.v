module siso_register_tb;
reg d,clk;
wire q;
siso_register dut(.d(d),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    clk=0;d=1;
    #10;d=0;
    #10;d=1;
    #10;d=0;
    #5;
    $monitor("clk=%b d=%b   q=%b",clk,d,q);
    #40;$finish;
end
endmodule
