module presettable_counter(
    input clk,rst,preset,
    input [3:0]preset_value,
    output reg [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q<=4'd0;
    else if(preset)
        q<=preset_value;
    else 
        q<=q+1;
end
endmodule
