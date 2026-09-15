module regwithen(
    input [3:0]d,
    input clk,en,
    output reg [3:0]q
);
always@(posedge clk) begin
    if(en)
        q<=d;
    else
        q<=0;
end
endmodule
