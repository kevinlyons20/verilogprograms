module counter_16bit(
    input clk,rst,
    output reg [15:0]q
);
initial q=16'd0;
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=16'd0;
    else
        q<=q+1;
end
endmodule
