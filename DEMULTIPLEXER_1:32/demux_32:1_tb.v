module demux_32_1_tb;
reg d;
reg [4:0]s;
wire [31:0]y;
demux_32_1 dut(.d(d),.s(s),.y(y));
initial begin
    $dumpfile("demux_32_1.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    d=1;s=5'b10101;
    #5;
end
endmodule


