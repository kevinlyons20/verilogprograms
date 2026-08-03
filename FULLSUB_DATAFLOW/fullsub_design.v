module fullsub(
    input a,b,bin,
    output diff,bout
);
assign diff=a^b^bin;
assign bout=(~a & bin) | (b & bin) | (~a & b);
endmodule
