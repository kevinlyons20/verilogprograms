module binary_counter_rst(
    input clk, rst,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
       q<=4'd0;
    else
       q<=q+1;
end
endmodule
