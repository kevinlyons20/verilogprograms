module register_shift_enable(
    input d,
    input clk,
    input shift_en,
    output reg [3:0] q
);
always @(posedge clk)
begin
    if (shift_en)
        q <= {d, q[3:1]};
end
endmodule
