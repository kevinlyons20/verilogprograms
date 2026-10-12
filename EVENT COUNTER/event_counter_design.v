module event_counter(
    input clk,
    input rst,
    input event_in,
    output reg [3:0] q
);
reg event_prev;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 4'd0;
        event_prev <= 1'b0;
    end
    else begin
        event_prev <= event_in;

        if (event_in && !event_prev)
            q <= q + 1;
    end
end
endmodule
