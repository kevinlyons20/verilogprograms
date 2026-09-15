module regwithen_tb;
reg [3:0]d;
reg clk,en;
wire [3:0]q;
integer i;
regwithen dut(.d(d),.clk(clk),.en(en),.q(q));
initial begin
    $dumpfile("rewithen.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b en=%b  q=%b",d,clk,en,q);
    clk=1;en=0;
    #5;en=1;
    for(i=0;i<16;i=i+1) begin
        d=i;
        #5;
    end
    $finish;
end
always #5 clk=~clk;
endmodule
