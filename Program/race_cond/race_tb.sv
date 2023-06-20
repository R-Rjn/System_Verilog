module tb(input bit [7:0]value);
  initial begin
    $display("Value = %0d",value);
  end
endmodule
  module tprg;
  logic [7:0]value;
   race_cond tt(value);
  tb test(value);
endmodule
