module div_tb;
reg [7:0]a,b;
wire [7:0]y;
div dut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("div.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b b=%b y=%b",a,b,y);
    a=8'b10101010;b=8'b00000010;
    #5;
    $finish;
end
endmodule
