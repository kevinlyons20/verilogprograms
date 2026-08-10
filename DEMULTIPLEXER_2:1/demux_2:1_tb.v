module demux_1_2_tb;
reg d,s;
wire [1:0]y;
demux_1_2 dut(.d(d),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux_1_2.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b.y=%b",d,s,y);
    for(i=0;i<4;i=i+1) begin
        {d,s}=i;
        #5;
    end
    $finish;
end
endmodule
