module piso_reg_tb;
reg [3:0]d;
reg clk,rst,load;
wire q;
piso_reg dut(.d(d),.clk(clk),.rst(rst),.load(load),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("pisoreg.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b rst=%b load=%b q=%b",d,clk,rst,load,q);
    clk=0;rst=1;load=0;d=4'b1101;
    #10;rst=0;load=1;
    #10;load=0;
    #30;$finish;
end
endmodule
