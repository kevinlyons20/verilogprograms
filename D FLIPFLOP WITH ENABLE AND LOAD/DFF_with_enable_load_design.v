module dff_enable_load(
    input d,
    input clk,
    input en,
    input load,
    output reg q
);
always @(posedge clk) begin
    if (en && load)
        q <= d;
    else
        q <= q;
end
endmodule
