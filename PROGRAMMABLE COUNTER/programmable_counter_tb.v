module programmable_counter_tb;
reg clk,rst;
reg [3:0]limit;
wire [3:0]q;
programmable_counter dut(.clk(clk),.rst(rst),.limit(limit),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("programmablecounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b limit=%b q=%b",clk,rst,limit,q);
    clk=1;rst=1;limit=4'b1010;
    #5;rst=0;
    #125;$finish;
end
endmodule
