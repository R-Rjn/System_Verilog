program tb(input bit [7:0]value);
  initial begin
    $display("Value = %0d",value);
  end
endprogram
module tprg;
  logic [7:0]value;
  prg tt(value);
  tb test(value);
endmodule
