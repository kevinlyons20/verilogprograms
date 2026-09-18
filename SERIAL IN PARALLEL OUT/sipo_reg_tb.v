module sipo_reg_tb;
reg d,clk;
wire [3:0]q;
sipo_reg dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b d=%b   q=%b",clk,d,q);
    clk=0;d=1;
    #5;clk=1;
    #5;clk=0;
    #5;clk=1;d=0;
    #5;clk=0;
    #5;clk=1;d=1;
    #5;clk=0;
    #5;clk=1;
    #5;$finish;
end
endmodule
