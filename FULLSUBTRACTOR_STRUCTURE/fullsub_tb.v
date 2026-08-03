module fullsub_tb;
reg a,b,bin;
wire diff,bout;
fullsub dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
integer i;
initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,bin=%b,diff=%b,bout=%b",a,b,bin,diff,bout);
    for(i=0;i<8;i=i+1) begin
        {a,b,bin}=i;
        #5;
    end
    $finish;
end
endmodule
