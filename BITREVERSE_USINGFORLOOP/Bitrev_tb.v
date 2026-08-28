module bitreverse_tb;
reg [3:0]a;
wire [3:0]y;
bitreverse dut(.a(a),.y(y));
initial begin
    $dumpfile("bitreverse.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b         y=%b",a,y);
    a=4'b1010;
    #5;
    $finish;
end
endmodule
