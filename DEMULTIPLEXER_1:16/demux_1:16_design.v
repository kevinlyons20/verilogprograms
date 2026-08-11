module demux_1_16(
    input d,
    input [3:0]s,
    output [15:0]y
);
wire [1:0]a;
demux_1_8 f1(a[0],s[2:0],y[7:0]);
demux_1_8 f2(a[1],s[2:0],y[15:8]);
demux_1_2 g1(d,s[3],a[1:0]);
endmodule
module demux_1_8(
    input d,
    input [2:0]s,
    output reg [7:0]y
);
always@(*) begin
    y=3'b000;
    case(s)
        3'b000: y[0]=d;
        3'b001: y[1]=d;
        3'b010: y[2]=d;
        3'b011: y[3]=d;
        3'b100: y[4]=d;
        3'b101: y[5]=d;
        3'b110: y[6]=d;
        3'b111: y[7]=d;
    endcase
end
endmodule
module demux_1_2(
    input d,s,
    output [1:0]y
);
assign y[0]=d&~s;
assign y[1]=d&s;
endmodule



