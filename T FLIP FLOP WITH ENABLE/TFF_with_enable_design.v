module tff_with_enable(
    input t,clk,en,
    output reg q
);
initial q<=1;
always@(posedge clk) begin
    if(en)
        case(t)
            0: q<=q;
            1: q<=~q;
        endcase
end
endmodule
