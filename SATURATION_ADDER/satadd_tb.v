module satadd_tb;
reg [3:0]a,b;
wire [3:0]y;
satadd dut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("satadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b  b=%b  y=%b",a,b,y);
    a=4'b1000;b=4'b0101;
    #5;
    a=4'b1111;b=4'b0011;
    #5;
    $finish;
end
endmodule
