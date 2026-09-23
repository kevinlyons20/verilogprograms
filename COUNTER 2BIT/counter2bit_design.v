module counter_2bit(
    input clk,rst,
    output reg [1:0]q
);
initial q=2'b0;
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=2'b00;
    else
        q<=q+1;
end
endmodule
