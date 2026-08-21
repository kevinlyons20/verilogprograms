module arithshift_tb;
reg[3:0]a;
reg b;
wire [3:0]c;
arithshift dut(.a(a),.b(b),.c(c));
initial begin
    $dumpfile("arithshift.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  b=%b  c=%b",a,b,c);
    a=4'b1010;b=0;
    #5;
    b=1;
    #5;
    $finish;
end
endmodule
