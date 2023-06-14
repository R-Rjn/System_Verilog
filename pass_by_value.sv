module pass_by_value;
  int x,y,z;
  function int frc(int m,a);
    m = m*a;
    return m*a;
  endfunction
  
  initial begin
    x = 25;
    y = 10;
    z = frc(x,y);
    $display("\tValue of x = %0d",x);
    $display("\tValue of y = %0d",y);
    $display("\tValue of z = %0d",z);
  end
endmodule
