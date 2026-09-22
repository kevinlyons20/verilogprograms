module universal_shift_register(
    input [3:0] d,
    input sr,sl,s1,s0,clk,
    output reg [3:0] q
);
always @(posedge clk) begin
    case ({s1,s0})
        2'b00: q <= q;              
        2'b01: q <= {sr,q[3:1]};    
        2'b10: q <= {q[2:0],sl};   
        2'b11: q <= d;             
    endcase
end
endmodule
