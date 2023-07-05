class deal;
  rand bit [7:0] var1;
  constraint c1{var1>2 && var1 < 12;}; 
endclass

module done;
deal d;
  initial begin
    d = new();
    repeat(5) begin
      d.randomize with {var1 > 8;};
      $display("value of var1= %0d",d.var1);
  end
  end
endmodule
