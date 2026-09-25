module downcounter_4bit(
    input clk,rst,
    output reg [3:0]q
);
initial q=4'b1111;
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=4'b1111;
    else
        q<=q-1;
end
endmodule
