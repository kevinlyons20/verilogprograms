module orgate_tb;
reg a;
reg b;
wire c;
orgate dut(.a(a),.b(b),.c(c));
initial begin
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    $finish;
end
initial begin
    $dumpfile("orgate.vcd");
    $dumpvars(0,orgate_tb);
    $monitor("Time=%o,a=%b,b=%b,c=%b",$time,a,b,c);
end 
endmodule
