module register_2bit_tb;
reg [1:0] d;
reg clk;
wire [1:0] q;
register_2bit dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("register_2bit.vcd");
    $dumpvars(0, dut);
    $monitor("clk=%b d=%b q=%b", clk, d, q);
    clk = 0;
    d = 2'b00;
    #10 d = 2'b01;
    #10 d = 2'b10;
    #10 d = 2'b11;
    #10 d = 2'b00;
    #5 $finish;
end
always #5 clk = ~clk;
endmodule
