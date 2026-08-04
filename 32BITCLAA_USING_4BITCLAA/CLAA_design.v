module claa32bit(
    input [31:0]a,b,
    input cin,
    output [31:0]sum,
    output carry
);
wire c1,c2,c3,c4,c5,c6,c7;
carrylookaheadadd cl1(a[3:0],b[3:0],cin,sum[3:0],c1);
carrylookaheadadd cl2(a[7:4],b[7:4],c1,sum[7:4],c2);
carrylookaheadadd cl3(a[11:8],b[11:8],c2,sum[11:8],c3);
carrylookaheadadd cl4(a[15:12],b[15:12],c3,sum[15:12],c4);
carrylookaheadadd cl5(a[19:16],b[19:16],c4,sum[19:16],c5);
carrylookaheadadd cl6(a[23:20],b[23:20],c5,sum[23:20],c6);
carrylookaheadadd cl7(a[27:24],b[27:24],c6,sum[27:24],c7);
carrylookaheadadd c8(a[31:28],b[31:28],c7,sum[31:28],carry);
endmodule


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
