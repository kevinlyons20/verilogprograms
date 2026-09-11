module tff_with_reset(
    input t,clk,rst,
    output reg q
);
initial q<=0;
always@(posedge clk) begin
    if(rst)
        q<=0;
    else
    case(t)
        1'b0: q<=q;
        1'b1: q<=~q;
    endcase
end
endmodule
