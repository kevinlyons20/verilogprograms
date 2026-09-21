module rightshiftreg(
    input d,clk,
    output reg [3:0]q
);
always@(posedge clk) begin
    q<={d,q[3:1]};
end
endmodule
