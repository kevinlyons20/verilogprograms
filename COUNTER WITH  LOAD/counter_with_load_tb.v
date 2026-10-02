module counter_with_load_tb;
  reg clk, rst, load;
  reg [3:0] load_value;
  wire [3:0] q;

  counter_with_load dut(.clk(clk), .rst(rst), .load(load), .load_value(load_value), .q(q));
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("counterwithload.vcd");
    $dumpvars(0, dut);
    $monitor("clk=%b rst=%b load=%b load_value=%b q=%b", clk, rst, load, load_value, q);
    
    clk = 1; rst = 1; load = 0;
    #10; rst = 0; load = 1; load_value = 4'd9;
    #5; load = 0;
    #25; load = 1; load_value = 4'd1;
    #5; load = 0;
    #50; $finish;
  end
endmodule
