module bcdadd(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry
);
wire [3:0]s1;
wire d,c1;
assign {c1,s1}=a+b+cin;
assign d = c1 | (s1 > 4'b1001);
reg [3:0]e;
always@(*) begin
if(c1 || s1>4'b1001)
    e=4'b0110;
else
    e=4'b0000;
end
assign sum   = s1 + e;
assign carry = d;
endmodule
