module register_load_4bit(
    input [3:0] d,
    input clk,
    input load,
    output reg [3:0] q
);
always @(posedge clk) begin
    if (load)
        q <= d;
end
endmodule
