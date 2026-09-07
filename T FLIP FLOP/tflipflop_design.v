module tflipflop(
    input t,clk,
    output reg q=0
);
always@(posedge clk) begin
    if(t)
        q<=~q;
end
endmodule
