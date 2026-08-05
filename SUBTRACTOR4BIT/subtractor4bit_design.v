module sub4bit(
    input [3:0]a,b,
    input bin,
    output [3:0]diff,
    output bout
);
assign {bout, diff} = a + (~b) + 1'b1;
endmodule
