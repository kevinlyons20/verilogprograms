module majandmin_tb;
reg [2:0]a;
wire y;
majandmin dut(.a(a),.y(y));
integer i;
initial begin
    $dumpfile("majandmin.vcd");
    $dumpvars(0,dut);
    for(i=0;i<8;i=i+1) begin
        a=i;
        #5;
    if(y==1)
        $display("a=%b y=majority",a);
    else
        $display("a=%b y=minority",a);
    end
     $finish;
end
endmodule
