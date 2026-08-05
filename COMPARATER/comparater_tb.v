module comp_tb;
reg [4:0]a,b;
wire g,e,l;
comparater dut(.a(a),.b(b),.g(g),.e(e),.l(l));
initial begin
    $dumpfile("comparater.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,g=%b,e=%b,l=%b",a,b,g,e,l);
    a=4'd3;b=4'd5;
    #5;
    $finish;
end
endmodule
