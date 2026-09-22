module circular_shift_register(
    input [3:0]d,
    input load,clk,direction,
    output reg [3:0]q
);
always@(posedge clk) begin
    if(load)
        q<=d;
    else if(direction)
        q<={q[2:0],q[3]};
    else
        q<={q[0],q[3:1]};
end
endmodule
