module register_16bit(
    input [15:0] d,
    input clk,
    output reg [15:0] q
);
always @(posedge clk) begin
    q <= d;
end
endmodule
