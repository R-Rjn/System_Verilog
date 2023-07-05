//testing more constraints
class know;
  randc bit [2:0] a;
  randc bit [2:0] b;
  
  constraint c1 {
  //    a!=4;
   //  b!=3;
    // other
  a>2 && a<6;
    b>1 && b< 5;
  }
endclass

module rndm;
  know k;
  initial begin
  k = new();
  repeat(5) begin
   k.randomize();
  $display("Value a = %0d | b = %0d",k.a,k.b);
  end
  end
    endmodule
