module encode_2_1_tb;
reg [1:0]a;
wire y;
encode_2_1 dut(.a(a),.y(y));
initial begin
    $dumpfile("encode_2_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=2'b00;
    #5;
    a=2'b01;
    #5;
    a=2'b10;
    #5;
    a=2'b11;
    #5;
    $finish;
end
endmodule
