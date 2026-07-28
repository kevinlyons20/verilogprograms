module norgate_tb;
reg a,b;
wire c;
norgate dut(.a(a),.b(b),.c(c));
initial begin 
    $dumpfile("norgate.vcd");
    $dumpvars(0,norgate_tb);
    $monitor("a=%b,b=%b,c=%b",a,b,c);
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    #5;$finish;
end 
endmodule
