module signadd_tb;
reg signed [4:0]a,b;
wire signed [4:0]c;
signadd dut(.a(a),.b(b),.c(c));
initial begin
    $dumpfile("signadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%d   b=%d  c=%d",a,b,c);
    a=-5;b=-3;
    #5;
    $finish;
end
endmodule
