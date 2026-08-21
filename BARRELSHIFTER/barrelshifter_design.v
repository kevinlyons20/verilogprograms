module barrelshifter(
  input [3:0]a,
  input [2:0]s,
  output reg [3:0]b
);
  always@(*) begin
    b=4'b0000;
    case(s)
      3'b001: b=a<<1;
      3'b010: b=a>>1;
      3'b011: b=a<<<1;
      3'b100: b=a>>>1;
      3'b101: b={a[0],a[3:1]};
      3'b110: b={a[2:0],a[3]};
    endcase
  end
endmodule

                     
