module onehotenc_tb;
reg [7:0]a;
wire [2:0]b;
onehotenc dut(.a(a),.b(b));
integer i;
initial begin
    $dumpfile("onehotenc.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b b=%b",a,b);
    for(i=0;i<8;i=i+1) begin
        a=(8'b00000001<<i);
        #5;
    end
end
endmodule
