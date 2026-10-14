module galois_lfsr_tb;
reg clk,rst;
wire [3:0]q;
always #5 clk=~clk;
galois_lfsr dut(.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("galoislfsr.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b q=%b",clk,rst,q);
    clk=0;rst=1;
    #5;rst=0;
    #50;$finish;
end
endmodule
