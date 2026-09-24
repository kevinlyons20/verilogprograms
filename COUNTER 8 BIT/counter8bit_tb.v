module counter_8bit_tb;
reg clk,rst;
wire [7:0]q;
counter_8bit dut(.clk(clk),.rst(rst),.q(q));
always #2 clk=~clk;
always@(posedge clk) begin
    $display("time=%0t  clk=%b rst=%b q=%d",$time,clk,rst,q);
end
initial begin
    $dumpfile("counter2bit.vcd");
    $dumpvars(0,dut);
    clk=0;rst=1;
    #2;rst=0;
    #1024;$finish;
end
endmodule
