module circular_shifter(
    input [3:0] a,
    input [1:0] s,
    input d,
    output reg [3:0] y
);

always @(*) begin
    if (d == 0)
        y = (a << s) | (a >> (4-s)); 
    else
        y = (a >> s) | (a << (4-s));  
end

endmodule
