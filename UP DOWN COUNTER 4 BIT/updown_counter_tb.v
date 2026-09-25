module updowncounter_4bit_tb;
reg clk,rst,direction;
wire [3:0]q;
updowncounter_4bit dut(.clk(clk),.rst(rst),.q(q),.direction(direction));
always #5 clk=~clk;
always@(posedge clk) begin
    $display("time=%0t direction=%b clk=%b rst=%b q=%d",$time,direction,clk,rst,q);
end
initial begin
    $dumpfile("updowncounter2bit.vcd");
    $dumpvars(0,dut);
    clk=0;rst=1;
    #5;rst=0;direction=1;
    #150;direction=0;
    #150;$finish;
end
endmodule
