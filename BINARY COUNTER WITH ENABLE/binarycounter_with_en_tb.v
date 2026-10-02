module binary_counter_en_tb;
reg clk, en;
wire [3:0]q
binary_counter_en dut(.clk(clk),.en(en),.q(q));
initial begin
     $dumpfile("counter.vcd");
     $dumpvars(0,dut);
     $monitor("clk=%b en=%b q=%d",clk,en,q);
     clk=1;en=1;
     #25;en=0;
     #25;en=1:
     #115: $finish;
end
always #5 clk=-clk;
endmodule
