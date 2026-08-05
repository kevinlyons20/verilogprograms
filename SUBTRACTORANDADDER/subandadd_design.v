module addandsub(
    input  [3:0]a,b,
    input  c,d,
    output reg [3:0]sd,
    output reg e
);
always@(*) begin
    if(d==1) 
        {e,sd}=a+b+c;
    else
        {e,sd}=a+(~b)+1;
    end
endmodule
