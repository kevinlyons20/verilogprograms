module mux_16_1_tb;
reg [15:0]a;
reg [3:0]s;
wire y;
mux_16_1 dut(.a(a),.s(s),.y(y));
integer i,j;
initial begin
    $dumpfile("mux_16:1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<65536;i=i+1) begin
        for(j=0;j<16;j=j+1)begin
        {a,s}=i;
        #5;
    end
    end
    $finish;
end
endmodule
