module piso_reg(
    input [3:0] d,
    input clk,
    input rst,
    input load,
    output reg q
);
reg [3:0] temp;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        temp <= 4'b0000;
        q <= 1'b0;
    end
    else if (load) begin
        temp <= d;
        q <= d[3];
    end
    else begin
        q <= temp[2];
        temp <= {temp[2:0], 1'b0};
    end
end
endmodule
