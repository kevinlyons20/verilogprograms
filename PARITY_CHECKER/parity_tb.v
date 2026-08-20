module parity_check_tb;
  reg [3:0]a;
  reg mode,inpar;
  wire c;
  parity_check dut(.a(a),.mode(mode),.inpar(inpar),.c(c));
  initial begin
        a=4'b1010;inpar=0;mode=1;
    #5;
    $display("a=%b inpar=%b mode=%b c=%b ",a,inpar,mode,c);
    if(c)
      $display("NO ERROR");
    else
      $display("ERROR");
    #5;
   
    $finish;
  end
endmodule
