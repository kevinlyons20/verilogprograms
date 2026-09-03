module dlatch_tb;
reg d,en;
wire q;
dlatch dut(.d(d),.en(en),.q(q));
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b  en=%b  q=%b",d,en,q);
    d=0;en=0;
    #5;
    en=1;
    #5;
    d=1;
    #5;
    d=0;en=0;
    #5;
    $finish;
end
endmodule
