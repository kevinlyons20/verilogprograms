module register_16bit_tb;
reg [15:0] d;
reg clk;
wire [15:0] q;
register_16bit dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("register_16bit.vcd");
    $dumpvars(0, dut);
    $monitor("clk=%b d=%b q=%b", clk, d, q);
    clk = 0;d=16'd17;
    #5;clk=1;
    #5;clk=0;d=16'd212;
    #5;clk=1;
    #5;$finish;
end
endmodule
