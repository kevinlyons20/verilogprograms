module sr_latch_tb;
reg S,R;
wire Q,Qbar;
sr_latch dut(.S(S),.R(R),.Q(Q),.Qbar(Qbar));
integer i;
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,dut);
    $monitor("S=%b R=%b  Q=%b  Qbar=%b",S,R,Q,Qbar);
    for(i=0;i<4;i=i+1) begin
        {S,R}=i;
        #5;
    end
    $finish;
end
endmodule
