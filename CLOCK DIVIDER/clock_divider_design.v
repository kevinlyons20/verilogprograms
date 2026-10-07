module clock_divider_by4(
    input clk,
    input rst,
    output reg clk_out
);
reg [1:0] count;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 2'b00;
        clk_out <= 1'b0;
    end
    else begin
        count <= count + 1'b1;
        clk_out <= count[1];
    end
end
endmodule
