module counter_8bit(
    input clk,rst,
    output reg [7:0]q
);
initial q=8'd0;
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=8'd0;
    else
        q<=q+1;
end
endmodule
