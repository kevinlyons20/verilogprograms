module carrylookaheadadd_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
carrylookaheadadd dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
integer i;
initial begin
    $dumpfile("carrylookaheadadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
    for(i=0;i<512;i=i+1) begin
        {a,b,cin}=53;
         #5;
    end
    $finish;
end 
endmodule
