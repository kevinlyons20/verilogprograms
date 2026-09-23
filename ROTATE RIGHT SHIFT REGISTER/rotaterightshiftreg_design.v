module rotate_right_shift_register(
    input clk,load,
    input [3:0] d,
    output reg [3:0] q
);
always @(posedge clk) begin
    if (load)
        q <= d;
    else
        q <= {q[0],q[3:1]};
end
endmodule
