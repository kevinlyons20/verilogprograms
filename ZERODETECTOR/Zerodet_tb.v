module zerodet_tb;
reg [3:0]a;
wire b;
zerodet dut(.a(a),.b(b));
initial begin
    $dumpfile("zerodet.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b    b=%b",a,b);
    a=4'b0000;
    #5;
    a=4'b1000;
    #5;
    $finish;
end
endmodule
