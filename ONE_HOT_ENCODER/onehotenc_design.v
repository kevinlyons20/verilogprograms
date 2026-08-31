module onehotenc(
    input [7:0]a,
    output reg [2:0]b
);
integer i;
always@(*) begin
    for(i=0;i<8;i=i+1) begin
        if(a[i]==1)
            b=i;
    end
end
endmodule
