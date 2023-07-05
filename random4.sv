typedef enum{App=0,desig,chip, battery,row,coloumn,mobile} bay;
class deal;
  randc int a[0:9];
  rand bay b;
  constraint c1{ foreach(a[i]) if(i%2==0 & i!=1) a[i]==0;
                else a[i] == (i+1)/2; };
  
  function void get();
    foreach(a[i])
      $display("value of a[%0d] = %0d",i,a[i]);
  endfunction
endclass

module done;
  deal d;
  initial begin 
    d =new();
    repeat(5) begin
    d.randomize();
      $display(" string of b[2] = %0s, b[4] = %0s", d.b.next(2),d.b.next(4));
    end
    d.get();
  end
  endmodule
