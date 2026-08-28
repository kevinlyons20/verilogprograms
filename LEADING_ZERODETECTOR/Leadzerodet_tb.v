module lead_tb;
reg [7:0]a;
wire [3:0]count;
leading_zero_detector dut(.a(a),.count(count));
initial begin
    $dumpfile("zerodet.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  count=%d",a,count);
    a=8'b00000010;
    #5;
    $finish;
end
endmodule
