module ripple_up_down_counter(
    input clk,
    input rst,
    input direction,
    output reg [3:0] q
);

wire clk1, clk2, clk3;

assign clk1 = direction ? ~q[0] : q[0];
assign clk2 = direction ? ~q[1] : q[1];
assign clk3 = direction ? ~q[2] : q[2];

always @(posedge clk or posedge rst) begin
    if (rst)
        q[0] <= 1'b0;
    else
        q[0] <= ~q[0];
end

always @(posedge clk1 or posedge rst) begin
    if (rst)
        q[1] <= 1'b0;
    else
        q[1] <= ~q[1];
end

always @(posedge clk2 or posedge rst) begin
    if (rst)
        q[2] <= 1'b0;
    else
        q[2] <= ~q[2];
end

always @(posedge clk3 or posedge rst) begin
    if (rst)
        q[3] <= 1'b0;
    else
        q[3] <= ~q[3];
end

endmodule
