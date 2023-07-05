class core;
  string a;
   virtual function string get();
     a = "Base Details";
    return a;
   endfunction
  virtual function void display;
    $display("Inside base_class");
  endfunction
  
endclass
 
class sub_class extends core;
  
  function string get();
    a = "Extention details";
    return a;
  endfunction ;
  function void display;
    $display("Inside extended_class");
  endfunction
  
endclass
 
module virtu;
  initial begin
    core     ab;
    sub_class cd;
    
    cd = new();
    ab = cd;
    
    ab.display();
    $display("Here is %0s :",ab.get());
  end
endmodule
