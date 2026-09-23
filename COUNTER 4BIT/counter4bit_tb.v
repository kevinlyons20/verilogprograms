module counter_4bit_tb;
reg clk,rst;
wire [3:0]q;
counter_4bit dut(.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
always@(posedge clk) begin
    $display("time=%0t  clk=%b rst=%b q=%d",$time,clk,rst,q);
end
initial begin
    $dumpfile("counter2bit.vcd");
    $dumpvars(0,dut);
    clk=0;rst=1;
    #5;rst=0;
    #150;$finish;
end
endmodule
