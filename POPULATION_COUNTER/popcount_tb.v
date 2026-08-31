module popcount_tb;

reg [7:0]a;

wire [4:0]count;

popcount dut(.a(a),.count(count));

initial begin

    $dumpfile("popcount.vcd");

    $dumpvars(0,dut);

    $monitor("a=%b count=%d",a,count);

    a=8'b10101011;

    #5;

    $finish;

end

endmodule