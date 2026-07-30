module mulbitadd(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry
);
wire [4:0]th;
assign th=a+b+cin;
assign sum=th[3:0];
assign carry=th[4];
endmodule
