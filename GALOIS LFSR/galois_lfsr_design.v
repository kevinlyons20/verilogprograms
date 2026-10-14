module galois_lfsr(
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0001;
    else begin
        q <= {q[2:0], 1'b0};
        if (q[3])
            q <= {q[2:0], 1'b0} ^ 4'b0011;
    end
end
endmodule
