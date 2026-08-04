module graytobinary_tb;
reg [3:0]a;
wire [3:0]b;
graytobbinary dut(.a(a),.b(b));
integer i;
initial begin
    $dumpfile("graytobinary.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b",a,b);
    for(i=0;i<16;i=i+1) begin
        {a}=i;
        #5;
    end
    $finish;
end
endmodule
