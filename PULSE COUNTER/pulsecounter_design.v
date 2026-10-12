module pulse_counter(
    input clk,rst,pulse,
    output reg  [3:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst)
        q=4'd0;
    else if(pulse)
        q<=q+1;
end
endmodule
