module satadd(
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] y
);
reg [4:0] temp;
always@(*) begin
    temp = a + b;
    if(temp[4])
        y = 4'b1111;
    else
        y = temp[3:0];
end
endmodule
