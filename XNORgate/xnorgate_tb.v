module xnorgate_tb;
reg a,b;
wire y;
xnorgate dut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("xnorgate.vcd");
    $dumpvars(0,xnorgate_tb);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
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
