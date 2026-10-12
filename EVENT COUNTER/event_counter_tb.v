module event_counter_tb;
reg clk,rst,event_in;
wire [3:0]q;
event_counter dut(.clk(clk),.rst(rst),.event_in(event_in),.q(q));
always #5 clk=~clk;
always #10 event_in=~event_in;
initial begin
    $dumpfile("eventcounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b event=%b q=%b",clk,rst,event_in,q);
    clk=0;rst=1;event_in=1;
    #5;rst=0;
    #150;$finish;
end
endmodule
