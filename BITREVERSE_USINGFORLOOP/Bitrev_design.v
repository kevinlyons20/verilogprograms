module bitreverse(
    input [3:0]a,
    output reg [3:0]y
);
integer i,j;
always@(*) begin
    for(i=0;i<4;i=i+1) begin
        y[i]=a[3-i];
    end
end
endmodule
