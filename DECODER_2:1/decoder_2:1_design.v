module decoder(
  input a,
  output reg [1:0]y
);
  always@(*) begin
    case(a)
      0: y=2'b01;
      1: y=2'b10;
      default:y=2'bxx;
    endcase
  end
endmodule
      
