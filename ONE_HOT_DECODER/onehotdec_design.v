module onehotdec(
    input [1:0]a,
    output reg [3:0]b
);
always@(*) begin
    case(a)
    2'd0: b=4'd1;
    2'd1: b=4'd2;
    2'd2: b=4'd4;
    2'd3: b=4'd8;
    endcase
end
endmodule
