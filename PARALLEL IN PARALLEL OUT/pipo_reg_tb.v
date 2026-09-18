module pipo_reg_tb;
reg [3:0]d;
reg clk,rst;
wire [3:0]q;
pipo_reg dut(.d(d),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("pipo_reg.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b d=%b q=%b",clk,rst,d,q);
    clk=0;rst=1;d=4'd12;
    #5;clk=1;rst=0;
    #5;$finish;
end
endmodule
