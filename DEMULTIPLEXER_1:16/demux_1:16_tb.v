module demux_1_16_tb;
reg d;
reg [3:0]s;
wire [15:0]y;
demux_1_16 dut(.d(d),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux_1_16.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    d=1;s=4'b1000;
    #5;
    $finish;
end
endmodule
