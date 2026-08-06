module mux4_1_tb;
reg [3:0]a;
reg s1,s2;
wire y;
mux4_1 dut(.a(a),.s1(s1),.s2(s2),.y(y));
integer i;
initial begin
    $dumpfile("mux4:1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s1=%b,s2=%b,y=%b",a,s1,s2,y);
    for(i=0;i<64;i=i+1) begin
        {a,s1,s2}=i;
        #5;
end
    $finish;
end
endmodule
