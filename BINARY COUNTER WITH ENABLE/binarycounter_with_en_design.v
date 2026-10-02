module binary_counter_en(
input clk,en,
output reg [3:0]q
);
initial q=4'd0;
always@(posedge clk) begin
if(en)
q<=q+1;
end
endmodule
