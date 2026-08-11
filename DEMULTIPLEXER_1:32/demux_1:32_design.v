module demux_32_1(
    input d,
    input [4:0]s,
    output reg [31:0]y
);
integer i;
always@(*) begin
    y=32'd0;
    for(i=0;i<32;i=i+1) begin
        if(i==s)
            y[i]=d;
    end
end
endmodule
