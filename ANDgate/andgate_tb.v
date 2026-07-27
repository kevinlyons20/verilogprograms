module andgate_tb;
reg a;
reg b;
wire c;
andgate dut(.a(a),.b(b),.c(c));
initial begin 
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    #5;
    $dumpfile("andgate.vcd");
    $dumpvars(0,andgate_tb);
    $finish;
end
initial begin

    $monitor("time=%o,a=%b,b=%b,c=%b",$time,a,b,c);
   
end
endmodule
