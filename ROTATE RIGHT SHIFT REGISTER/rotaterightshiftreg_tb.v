module rotate_right_shift_register_tb;
reg clk,load;
reg [3:0]d;
wire [3:0]q;
always #5 clk=~clk;
rotate_right_shift_register dut(.clk(clk),.load(load),.d(d),.q(q));
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b load=%b d=%b q=%b",clk,load,d,q);
    clk=0;load=1;
    #10;d=4'b1010;
    #10;load=0;
    #30;$finish;
end
endmodule
