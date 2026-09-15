module regwithrst_tb;
reg [3:0]d;
reg clk,rst;
wire [3:0]q;
integer i;
always #5 clk=~clk;
regwithrst dut(.d(d),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("regwithrst.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b rst=%b d=%b  q=%b",clk,rst,d,q);
    clk=0;rst=1;
    #5;rst=0;
    for(i=0;i<=16;i=i+1) begin
        d=i;
        #5;
    end
    #5;$finish;
end
endmodule
