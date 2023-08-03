class singleton;
  int my_value;
  static singleton obj;
  
  local function new(int my_value);
    this.my_value = my_value;
  endfunction
  static function singleton create(int my_value);
    
    if(obj == null)
      obj = new(my_value);
    
    return obj;
  endfunction
  
endclass

module use_singleton ;
  singleton s1;
  singleton s2;
  initial begin
    s1 = singleton::create(4);// if you want to verify just comment this s1 and then compare s2 in both cases
    s2 = singleton::create(5);
    $display("size = %p",s2.obj);
  end
endmodule
