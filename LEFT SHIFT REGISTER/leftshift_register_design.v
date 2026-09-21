module leftshiftreg(
    input d,clk,
    output reg [3:0]q
);
always@(posedge clk) begin
    q<={q[2:0],d};
end
endmodule
