module register_8bit_tb;
reg [7:0] d;
reg clk;
wire [7:0] q;
register_8bit dut(.d(d),.clk(clk),.q(q));
integer i;
initial begin
    $dumpfile("register_8bit.vcd");
    $dumpvars(0, dut);
    $monitor("clk=%b d=%b q=%b", clk, d, q);
    clk = 0;
    for(i=0;i<256;i=i+1) begin
        d=i;
        #10;
    end
    #5;$finish;
end
always #5 clk = ~clk;
endmodule
