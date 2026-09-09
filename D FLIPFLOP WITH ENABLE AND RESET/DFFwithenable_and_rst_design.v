module dff_enable_reset(
    input d,clk,en,rst,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else if (en)
        q <= d;
    else
        q <= q;
end

endmodule
