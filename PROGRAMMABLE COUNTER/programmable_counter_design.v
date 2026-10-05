module programmable_counter(
    input clk,rst,
    input [3:0]limit,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=4'd0;
    else if(q==limit)
        q<=4'd0;
    else 
        q<=q+1;
end
endmodule
