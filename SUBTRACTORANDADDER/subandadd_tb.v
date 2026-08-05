module addandsub_tb;
reg [3:0]a,b;
reg d;
wire [3:0]sd;
wire e;
addandsub dut(.a(a),.b(b),.d(d),.sd(sd),.e(e));
initial begin
    $dumpfile("addandsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,d=%b,sd=%b,e=%b",a,b,d,sd,e);
    a=4'd8;b=4'd6;d=0;
    #5;
    a=4'd8;b=4'd6;d=1;
    #5;
    $finish;
end
endmodule
