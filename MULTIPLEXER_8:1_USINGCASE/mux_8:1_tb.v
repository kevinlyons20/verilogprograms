module mux8_1_tb;
reg [7:0]a;
reg [2:0]s;
wire y;
mux8_1 dut(.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux8_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<1785;i=i+1) begin
        {a,s}=i;
        #5;
    end
    $finish;
end
endmodule
