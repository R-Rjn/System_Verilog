package pkg_A;
  int data = 5;
  function void display();
      $display("data = %0d", data);
    endfunction

endpackage

package pkg_B;
  int data =10;
  function void display();
      $display("data = %0d", data);
    endfunction
endpackage

//-------------------------------

import pkg_A::*;
import pkg_B::*;

module package_example;
  initial begin
    pkg_A::display();
    pkg_B::display();
  end
endmodule
