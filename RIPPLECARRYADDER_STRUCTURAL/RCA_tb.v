module multibitadd_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
multibitadd dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin 
    $dumpfile("multibitadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
    a=4'b0110;b=4'b0101;cin=0;
    #5;
    $finish;
end 
endmodule

