module shift_register_tb;
reg d,clk;
wire [7:0]q;
always #5 clk=~clk;
integer i;
shift_register dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,dut);
    $monitor("clk=%b d=%b   q=%b",clk,d,q);
    clk=0;d=1;
    #10;
    for(i=0;i<=6;i=i+1) begin
        d=~d;
        #10;
    end
    $finish;
end
endmodule
