module register_4bit_tb;
reg [3:0] d;
reg clk;
wire [3:0] q;
register_4bit dut(.d(d),.clk(clk),.q(q));
integer i;
initial begin
    $dumpfile("register_4bit.vcd");
    $dumpvars(0, dut);
    $monitor("clk=%b d=%b q=%b", clk, d, q);
    clk = 0;
    for(i=0;i<16;i=i+1) begin
        d=i;
        #10;
    end
    #5;$finish;
end
always #5 clk = ~clk;
endmodule
