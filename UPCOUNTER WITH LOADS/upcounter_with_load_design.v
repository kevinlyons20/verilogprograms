module upcounter_withload(
    input clk,rst,load,
    input [3:0]load_value,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=4'd0;
    else if(load)
        q<=load_value;
    else 
        q<=q+1;
end
endmodule
