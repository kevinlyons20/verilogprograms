module shift_register(
    input d,
    input clk,
    output reg [3:0] q
);
always @(posedge clk) begin
    q <= {d, q[3:1]};
end
endmodule
