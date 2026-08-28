module leading_zero_detector(
    input  [7:0] a,
    output reg [3:0] count
);
integer i;
reg found;
always @(*) begin
    count = 0;
    found = 0;
    for(i = 7; i >= 0; i = i - 1) begin
        if(!found && a[i] == 1'b1) begin
            count = 7 - i;
            found = 1;
        end
    end
    if(a == 8'b00000000)
        count = 8;
end
endmodule
