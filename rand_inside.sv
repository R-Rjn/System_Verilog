 class deal;
   rand bit [3:0] var1;
   
   constraint c1{var1 inside {[0:7]};
                 var1 dist{1:=1,2:=1,0:=1,5:=1,6:=3};};
 endclass

module top;
  deal done;
  initial begin
    done=new();
    repeat(8) begin
      done.randomize();
    //  if(done.var1 inside {[0:3]})
    $display("var1=%0d",done.var1);
  end
  end
endmodule
