module upcounter_withload_tb;
reg clk,rst,load;
reg [3:0]load_value;
wire [3:0]q;
always #5 clk=~clk;
upcounter_withload dut(.clk(clk),.rst(rst),.load(load),.load_value(load_value),.q(q));
initial begin
    $dumpfile("upcounter.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b load=%b  load value=%b q=%b",clk,rst,load,load_value,q);
    clk=1;rst=1;
    #5;rst=0;
    #20;load=1;load_value=4'b0100;
    #10;load=0;
    #50;$finish;
end
endmodule
