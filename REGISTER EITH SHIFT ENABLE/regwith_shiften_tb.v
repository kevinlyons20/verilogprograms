module register_shift_enable_tb;
reg d;
reg clk;
reg shift_en;
wire [3:0]q;
register_shift_enable dut(.d(d),.clk(clk),.shift_en(shift_en),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b shiften=%b   q=%b",d,clk,shift_en,q);
    clk=0;d=1;shift_en=0;
    #10;d=0;shift_en=1;
    #10;d=1;
    #10;d=0;
    #10;d=1;
    #10;d=1;
    #5;$finish;
end
endmodule
