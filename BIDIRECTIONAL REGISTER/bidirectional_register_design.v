module bidirshiftreg(
    input d,clk,direction,
    output reg [3:0]q
);
always@(posedge clk) begin
    if(direction)
        q<={d,q[3:1]};
    else
        q<={q[2:0],d};
end
endmodule
