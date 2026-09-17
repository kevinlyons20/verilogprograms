module siso_register(
    input d,
    input clk,
    output q
);
reg [3:0] shift_reg;
always @(posedge clk) begin
    shift_reg <= {d, shift_reg[3:1]};
end
assign q = shift_reg[0];
endmodule
