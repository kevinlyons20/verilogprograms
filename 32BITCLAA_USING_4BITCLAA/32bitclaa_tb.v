module claa32bit_tb;
reg [31:0]a,b;
reg cin;
wire [31:0]sum;
wire carry;
claa32bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
integer i;
initial begin
    $dumpfile("32bitclaa.vcd");
    $dumpvars(0,dut);
    $monitor("a=%d,b=%d,cin=%b,sum=%d,carry=%b",a,b,cin,sum,carry);
    a=32'd90;b=32'd108;cin=0;
    #5;
    $finish;
end
endmodule
