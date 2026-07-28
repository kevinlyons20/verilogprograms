module xorgate_tb;
reg a,b;
wire c;
xorgate dut(.a(a),.b(b),.c(c));
initial begin
    $dumpfile("xorgate.vcd");
    $dumpvars(0,xorgate_tb);
    $monitor("a=%b,b=%b,c=%b",a,b,c);
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    #5;
    $finish;
end
endmodule
