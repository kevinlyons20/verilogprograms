module demux_81_tb;
reg d;
reg [2:0]s;
wire [7:0]y;
demux_81 dut(.d(d),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux_81.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    for(i=0;i<16;i=i+1) begin
        {d,s}=i;
        #5;
    end
    $finish;
end
endmodule
