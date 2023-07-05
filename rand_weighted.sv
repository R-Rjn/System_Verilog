class deal;
   rand bit [3:0] var1;
   
   constraint c1 {var1 dist{5:=3, 2:=6, 7:=3};}
 endclass

module top;
  deal done;
  initial begin
    done=new();
    repeat(8) begin
      done.randomize();
    $display("var1=%0d",done.var1);
  end
  end
endmodule
