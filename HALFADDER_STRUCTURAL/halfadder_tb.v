module halfadd_tb;
reg a,b;
wire sum,carry;
halfadd dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    $dumpfile("halfadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
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
