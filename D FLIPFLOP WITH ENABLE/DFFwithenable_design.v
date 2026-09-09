module DFFwithenable(
    input d,clk,en,
    output reg q
);
initial q=1;
always@(posedge clk) begin
    if(en)
        q<=d;
end
endmodule
