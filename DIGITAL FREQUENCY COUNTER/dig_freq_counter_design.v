module digital_freq_counter #(
    parameter CLK_FREQ = 50000000
)(
    input clk,rst,
    input signal_in,
    output reg [31:0] frequency
);
reg [31:0] time_count;
reg [31:0] pulse_count;
reg signal_prev;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        time_count  <= 0;
        pulse_count <= 0;
        frequency   <= 0;
        signal_prev <= 0;
    end
    else begin
        signal_prev <= signal_in;

        if (signal_in && !signal_prev)
            pulse_count <= pulse_count + 1;

        if (time_count == CLK_FREQ - 1) begin
            time_count <= 0;
            frequency  <= pulse_count +
                          (signal_in && !signal_prev);
            pulse_count <= 0;
        end
        else begin
            time_count <= time_count + 1;
        end
    end
end
endmodule
