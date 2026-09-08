module DFFwith_setandrst(
    input d,clk,set,rst,
    output reg q
);
always@(posedge clk or posedge set or posedge rst) begin
    if(rst)
        q<=0;
    else if(set)
        q<=1;
    else
        q<=d;
end
endmodule
