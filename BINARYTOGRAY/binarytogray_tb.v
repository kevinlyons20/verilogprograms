module binarytogray_tb;
reg [3:0]a;
wire [3:0]b;
binarytogray dut(.a(a),.b(b));
integer i;
initial begin
    $dumpfile("binarytogray.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b",a,b);
    for(i=0;i<16;i=i+1) begin
        {a}=i;
        #5;
    end
    $finish;
end 
endmodule
