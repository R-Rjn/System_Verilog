//on uncommenting the pre_randomize() function with last display 
// and commenting the post_randomize() function we can get the pre-rand value .
class deal;
  rand bit [7:0] var1;
  rand bit [7:0] var2;

function void pre_randomize();
//  var1.rand_mode(0);
//  var1=4;
//  var2=3;
//  $display("inside pre-rand");
//  $display("var1 =%0d, var2=%0d",var1,var2);
endfunction

function void post_randomize();
  $display("var1 =%0d, var2=%0d",var1,var2);
  $display("inside post-rand");
endfunction

endclass
module done;
deal d;
  initial begin
    d = new();
    repeat(2) begin
    d.randomize();
    end
  //  $display("value of var1= %0d, var2 = %0d",d.var1,d.var2);
  end
endmodule
