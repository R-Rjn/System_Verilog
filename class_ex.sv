class mean5;
  int i,sum,mean;
  typedef enum{value[0:4]=4} values;
  values v;
  string sh;
  function new();
    for(i=v.first();i<v.last();i++) begin 
      sum += i;
    end
    mean = sum/5;
    sh = "Here the mean value is ";
  endfunction

  function void display();
$display("%0s %0d",sh,mean);
  endfunction
endclass

module constr;
  mean5 me;
  initial begin
    me = new();
    me.display();
  end
endmodule
