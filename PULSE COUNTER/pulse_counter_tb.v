module pulse_counter_tb;
reg clk,rst,pulse;
wire [3:0]q;
always #5 clk=~clk;
pulse_counter dut(.clk(clk),.rst(rst),.pulse(pulse),.q(q));
initial begin
    $dumpfile("pulsecounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b pulse=%b q=%b",clk,rst,pulse,q);
    clk=0;rst=1;
    #5;rst=0;pulse=1;
    #25;pulse=0;
    #15;pulse=1;
    #25;$finish;
end
endmodule
