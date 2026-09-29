module mod3_counter(
    input clk,
    input rst,
    output reg [1:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 2'b00;
    else if (q == 2'b10)
        q <= 2'b00;
    else
        q <= q + 1'b1;
end
endmodule
