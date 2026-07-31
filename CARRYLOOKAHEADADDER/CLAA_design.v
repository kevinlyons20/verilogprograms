module carrylookaheadadd(
    input [3:0]a,b,
    input cin,
    output  [3:0]sum,
    output  carry
);
wire [3:0]g,p;
wire [4:0]c;
assign c[0]=cin;
assign g[3:0]=a[3:0]&b[3:0];
assign p[3:0]=a[3:0]^b[3:0];
assign c[1] = g[0] | (p[0]&c[0]);
assign c[2] = g[1] | ( p[1]&g[0]) | (p[1]&p[0]&c[0]);
assign c[3] = g[2] | ( p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c[0]);
assign c[4] = g[3] | (p[3]&g[2])  | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&c[0]);
assign sum[3:0]=p[3:0]^c[3:0];
assign carry=c[4];
endmodule
