module pipo_reg(
    input [3:0]d,
    input clk,rst,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=4'd0;
    else
        q<=d;
end
endmodule
