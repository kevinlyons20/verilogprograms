module trail_tb;
reg [7:0]a;
wire [3:0]count;
trailing_zero_detector dut(.a(a),.count(count));
initial begin
    $dumpfile("trail.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b   count=%d",a,count);
    a=8'b01000000;
    #5;
    $finish;
end
endmodule
