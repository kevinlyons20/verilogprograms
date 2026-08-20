module parity_check(
  input [3:0]a,
  input mode,inpar,
  output reg c
);
  reg f;
  assign f=a[0]^a[1]^a[2]^a[3];
  always@(*) begin
    if(mode && (f==inpar)) //even
      c=1;
    else if(!mode && (!f==inpar)) //odd
      c=1;
    else
      c=0;
  end
endmodule
    
    
      
      
      
    
