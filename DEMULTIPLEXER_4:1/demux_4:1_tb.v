module demux_41_tb;
reg d;
reg [1:0]s;
wire [3:0]y;
demux_41 dut(.d(d),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux_41.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    for(i=0;i<8;i=i+1) begin
        {s,d}=i;
        #5;
    end
    $finish;
end
endmodule
