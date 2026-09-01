module carry_save_adder(
    input [3:0] a,b,c,
    output [4:0] y
);
reg [3:0] sum;
reg [3:0] carry;
always@(*) begin
    sum = a ^ b ^ c;
    carry = (a & b) | (b & c) | (a & c);
end
assign y = sum + (carry << 1);
endmodule
