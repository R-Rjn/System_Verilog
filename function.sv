module temp_task;
  int z;

  function int poly;
    input int x,y;
    return ((2 * x) + (3*y) + 4);   
  endfunction

  initial begin
    z = poly(1,1);
    $display("\tThe value of polynomial z = %0d",z);
    z = poly(4,5);
    $display("\tThe value of polynomial z = %0d",z);
    z = poly(2,6);
    $display("\tThe value of polynomial z = %0d",z);
  end
endmodule
