module circular_shift_register_tb;
reg [3:0]d;
reg load,clk,direction;
wire [3:0]q;
circular_shift_register dut(.d(d),.clk(clk),.load(load),.direction(direction),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t  clk=%b d=%b load=%b direction=%b q=%b",$time,clk,d,load,direction,q);
    clk=0;d=4'b1011;
    #5;load=1;
    #10;direction=1;load=0;
    #20;direction=0;
    #20;direction=1'bx;
    #5;$finish;
end
endmodule
