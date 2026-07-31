module halfsub_tb;
reg a,b;
wire diff,bin;
halfsub dut(.a(a),.b(b),.diff(diff),.bin(bin));
initial begin
    $dumpfile("halfsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,diff=%b,bin=%b",a,b,diff,bin);
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
