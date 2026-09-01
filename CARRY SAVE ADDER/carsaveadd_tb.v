module carry_save_adder_tb;
reg [3:0]a,b,c;
wire [4:0]y;
carry_save_adder dut(.a(a),.b(b),.c(c),.y(y));
initial begin
    $dumpfile("carrysaveadder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b b=%b c=%b y=%b",a,b,c,y);
    a=2;b=2;c=1;
    #5;
    $finish;
end
endmodule
