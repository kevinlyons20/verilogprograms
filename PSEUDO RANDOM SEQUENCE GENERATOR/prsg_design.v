module pseudo_random_seq(
    input clk, rst,
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0001;
    else
        q <= {q[2:0], q[3] ^ q[2]};
end

endmodule
