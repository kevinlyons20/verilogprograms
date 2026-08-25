module thermo2bit(
    input [1:0]a,
    output reg [3:0]y
);
always@(*) begin
    y=2'd0;
    case(a)
        2'b01: y=4'b0001;
        2'b10: y=4'b0011;
        2'b11: y=4'b0111;
    endcase
end
endmodule
