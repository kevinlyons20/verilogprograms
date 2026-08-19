module alu_4bit(
  input [3:0]a,b,
  input [2:0]s,
  output reg [7:0]y
);
  always@(*) begin
    y=8'd0;
    case(s)
      3'd0: y=a+b;
      3'd1: y=a-b;
      3'd2: y=a*b;
      3'd3: y=a/b;
      3'd4: y=a%b;
      3'd5: y=a&b;
      3'd6: y=a|b;
      3'd7: y=a^b;
    endcase
  end
  endmodule
