module bcdadd(
    input [3:0]a,b,
    input cin,
    output reg [3:0]sum,
    output carry
);
reg [3:0]c;
assign {carry,c}=a+b+cin;
always@(*) begin
    if(carry || c>9)
        sum=c+6;
    else
        sum=c;
end
endmodule
