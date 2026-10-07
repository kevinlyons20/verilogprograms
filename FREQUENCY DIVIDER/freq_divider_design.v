module frequency_divider(
    input clk,
    input rst,
    output reg q
);
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= ~q;
end
endmodule
