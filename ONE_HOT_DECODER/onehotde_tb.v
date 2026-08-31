module onehotdec_tb;
reg [1:0]a;
wire [3:0]b;
onehotdec dut(.a(a),.b(b));
integer i;
initial begin
    $dumpfile("onehotdec.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b   b=%b",a,b);
    for(i=0;i<4;i=i+1) begin
        a=i;
        #5;
    end
end
endmodule
