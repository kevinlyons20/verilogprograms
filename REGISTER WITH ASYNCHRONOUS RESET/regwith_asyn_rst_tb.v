module register_async_reset_tb;
reg clk;
reg reset;
reg [3:0]d;
wire [3:0]q;
register_async_reset dut(.clk(clk),.reset(reset),.d(d),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b reset=%b d=%b   q=%b",clk,reset,d,q);
    clk=0;reset=1;
    #10;reset=0;d=4'b1010;
    #10;d=4'b0010;
    #5;$finish;
end
endmodule
