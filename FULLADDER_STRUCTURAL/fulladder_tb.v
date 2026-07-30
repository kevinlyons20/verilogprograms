module fulladder_tb;
reg a,b,c;
wire sum,carry;
fulladder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,fulladder_tb);
    $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
    a=0;b=0;c=0;
    #5;
    c=1;
    #5;
    b=1;c=0;
    #5;
    c=1;
    #5;
    a=1;b=0;c=0;
    #5;
    c=1;
    #5;
    b=1;c=0;
    #5;
    c=1;
    #5;$finish;
end
endmodule
