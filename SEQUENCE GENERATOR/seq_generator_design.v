module seq_generator(
    input clk,rst,
    output reg [1:0]q
);
always@(posedge clk or posedge rst) begin
    if(rst) 
        q<=2'd0;
    else begin
         case (q)
            2'b00: q <= 2'b01;
            2'b01: q <= 2'b11;
            2'b11: q <= 2'b10;
            2'b10: q <= 2'b00;
            default: q <= 2'b00;
        endcase
    end
end
endmodule
