module register_sync_reset_tb;
reg clk,rst;
reg [3:0]d;
wire [3:0]q;
always #5 clk=~clk;
register_sync_reset dut(.clk(clk),.rst(rst),.d(d),.q(q));
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b d=%b   q=%b",clk,rst,d,q);
    clk=0;rst=1;d=4'b1010;
    #10;rst=0;d=4'b1010;
    #10;d=4'b1110;
    #10;d=4'b0010;
    #5;$finish;
end
endmodule
