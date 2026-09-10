module dff_enable_load_tb;
reg d, clk, en, load;
wire q;
dff_enable_load dut(
    .d(d),
    .clk(clk),
    .en(en),
    .load(load),
    .q(q)
);
initial begin
    $dumpfile("dff_enable_load.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b en=%b load=%b d=%b q=%b",
              $time, clk, en, load, d, q);
    clk = 0;d = 0;en = 0;load = 0;
    #5  d = 1; en = 1; load = 1;
    #10 d = 0; en = 1; load = 1;
    #10 d = 1; en = 0; load = 1;
    #10 d = 0; en = 1; load = 0;
    #10 d = 1; en = 1; load = 1;
    #10;
    $finish;
end
always #5 clk = ~clk;
endmodule
