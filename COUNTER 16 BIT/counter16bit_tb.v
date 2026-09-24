module counter_16bit_tb;
reg clk,rst;
wire [15:0]q;
counter_16bit dut(.clk(clk),.rst(rst),.q(q));
always #2 clk=~clk;
always@(posedge clk) begin
    $display("time=%0t  clk=%b rst=%b q=%d",$time,clk,rst,q);
end
initial begin
    $dumpfile("counter2bit.vcd");
    $dumpvars(0,dut);
    clk=0;rst=1;
    #2;rst=0;
    #262144;$finish;
end
endmodule
