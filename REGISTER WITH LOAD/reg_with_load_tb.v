module register_load_4bit_tb;
reg [3:0] d;
reg clk, load;
wire [3:0] q;
register_load_4bit dut(
    .d(d),
    .clk(clk),
    .load(load),
    .q(q)
);
initial begin
    $dumpfile("register_load_4bit.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b load=%b d=%b q=%b",
              $time, clk, load, d, q);
    clk = 0;
    load = 0;
    d = 4'b0000;
    #5  clk = 1; load = 1; d = 4'b1010;
    #5  clk = 0;
    #5  clk = 1; load = 0; d = 4'b1100;
    #5  clk = 0;
    #5  clk = 1; load = 0; d = 4'b0011;
    #5  clk = 0;
    #5  clk = 1; load = 1; d = 4'b0101;
    #5  clk = 0;
    #5 $finish;
end
endmodule
