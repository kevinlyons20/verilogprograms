module universal_shift_register_tb;
reg [3:0]d;
reg sr,sl,s1,s0,clk;
wire [3:0]q;
universal_shift_register dut(.d(d),.sr(sr),.s1(s1),.s0(s0),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("universalshiftregister.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b s1=%b s0=%b d=%b sr=%b sl=%b q=%b",$time,clk, s1, s0, d, sr, sl, q);
     clk = 0;d = 4'b0000;sr = 0;sl = 0;s1 = 0;s0 = 0;
    #10;d = 4'b1011;s1 = 1;s0 = 1;
    #10;s1 = 0;s0 = 0;
    #10;sr = 0;s1 = 0;s0 = 1;
    #10;sl = 1;s1 = 1;s0 = 0;
    #10;d = 4'b1100;s1 = 1;s0 = 1;
    #10;$finish;
    end
endmodule
