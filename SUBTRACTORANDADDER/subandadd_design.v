module addandsub(
    input  [3:0]a,b,
    input  d,
    output reg [3:0]sd,
    output reg e
);
always@(*) begin
    if(d==1) 
        {e,sd}=a+b;
    else
        {e,sd}=a-b;
    end
endmodule
