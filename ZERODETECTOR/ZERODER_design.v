module zerodet(
    input [3:0]a,
    output reg b
);
always@(*) begin
    if(a==0)
        b=1;
    else
        b=0;
end
endmodule
