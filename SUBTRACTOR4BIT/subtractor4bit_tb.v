module sub4bit_tb;
reg [3:0]a,b;
reg bin;
wire [3:0]diff;
wire bout;
sub4bit dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
initial begin
    $dumpfile("sub4bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,bin=%b,diff=%b,bout=%b",a,b,bin,diff,bout);
    a=4'd5;b=4'd3;bin=0;
    #5;
    $finish;
end
endmodule
