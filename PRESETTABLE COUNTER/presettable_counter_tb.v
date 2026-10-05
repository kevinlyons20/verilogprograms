module presettable_counter_tb;
reg clk,rst,preset;
reg [3:0]preset_value;
wire [3:0]q;
presettable_counter dut(.clk(clk),.rst(rst),.preset(preset),.preset_value(preset_value),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("presettablecounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b preset=%b preset_value=%b q=%b",clk,rst,preset,preset_value,q);
    clk=1;rst=1;preset=0;
    #5;rst=0;
    #25;preset=1;preset_value=4'b0011;
    #5;preset=0;
    #50;$finish;
end
endmodule
