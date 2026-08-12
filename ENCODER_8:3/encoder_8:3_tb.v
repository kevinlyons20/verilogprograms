module encode_8_3_tb;
reg [7:0]a;
wire [2:0]y;
encode_8_3 dut(.a(a),.y(y));
integer i;
initial begin
    $dumpfile("encode_8_3.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<8;i=i+1) begin
        a=(8'b00000001 <<i);
        #5;
    end
    $finish;
end
endmodule
