module arithshift(
    input signed [3:0]a,
    input b,
    output reg [3:0]c

);
always@(*) begin
    if(b)
        c=a<<<1;
    else
        c=a>>>1;
end
endmodule
