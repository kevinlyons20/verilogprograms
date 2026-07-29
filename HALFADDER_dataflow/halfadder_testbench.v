module halfadder_tb;
reg a,b;
wire sum,carry;
halfadder dut(.a(a),.b(b),.sum(c),.carry(d));
initial begin
    $dumpfile("halfadder_tb");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,c,d);
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    $finish;
end
endmodule
