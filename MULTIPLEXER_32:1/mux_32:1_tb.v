module mux_32_1_tb;
reg [31:0]a;
reg [4:0]s;
wire y;
mux_32_1 dut(.a(a),.s(s),.y(y));
initial begin
    $dumpfile("mux_32_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=32'd4;s=5'd3;
    #5;
    a=32'd56;s=5'd4;
    #5;
    $finish;
end
endmodule
