module encode_2_1(
    input [1:0]a,
    output reg  y
);
always@(*) begin
    case(a) 
        2'b01 , 2'b10: y=a[1];
        default: y=1'bx;
    endcase
end
endmodule
