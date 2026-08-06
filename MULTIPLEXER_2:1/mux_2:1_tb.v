module mul_tb;
reg a,b,s;
wire y;
multiplexer2_1 dut(.a(a),.b(b),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("comparater2_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,s=%b,y=%b",a,b,s,y);
    for(i=0;i<8;i=i+1) begin
        {a,b,s}=i;
        #5;
    end
end
endmodule
