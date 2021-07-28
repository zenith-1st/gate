// Code your testbench here
// or browse Examples

module dlatchtb();
  reg d,rst,en;
  wire q,qb;
  integer i;
  
  //instanciation
  
  dlatch d1(d,en,rst,q,qb);
  
  initial begin
    rst=1;
    #2 rst=0; d=1; en=1;
    
    repeat (2) begin
      for(i=0;i<2;i=i+1) begin;
      	d=i; #2;
      end
    end
  end
  
  initial begin
    $monitor("d=%b,q=%b,time=%0t",d,q,$time);
  end
endmodule
//     #2 d=0;
//     #2 d=1;
//     #2 d=0;
//     #2 d=1;
//     #2 d=0;
//     #2 d=1;
//     #2 d=0;
//     #2 d=1;
    
  
    
    
    