module regwithrst(
    input [3:0]d,
    input clk,rst,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=0;
    else
        q<=d;
end
endmodule
