module digital_freq_counter_tb;
reg clk, rst, signal_in;
wire [31:0] frequency;
digital_freq_counter #(.CLK_FREQ(10)) 
dut (.clk(clk),.rst(rst),.signal_in(signal_in),.frequency(frequency));
always #5 clk = ~clk;
initial begin
    $dumpfile("digital_freq_counter.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b rst=%b signal_in=%b frequency=%0d",$time, clk, rst, signal_in, frequency);
    clk = 0;
    rst = 1;
    signal_in = 0;
    #12;
    rst = 0;
    repeat (5) begin
        #10 signal_in = 1;
        #10 signal_in = 0;
    end
    #100;
    $finish;
end
endmodule
