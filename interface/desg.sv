interface intf 
  (input clock);
  logic read, enable;
  logic [7 :0] addr, data;
endinterface :intf

module dut(intf dut_if);
  always @(posedge dut_if.clock)
   if(dut_if.read) 
     $display("%0tsec ->Read is asserted",$time); 
endmodule
