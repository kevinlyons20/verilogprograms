module popcount(
    input [7:0]a,
    output reg [4:0]count
);
integer i;
always@(*) begin
    count=0;
    for(i=0;i<8;i=i+1) begin
        if(a[i]==1)
            count = count + 1;
            
    end
end
endmodule
