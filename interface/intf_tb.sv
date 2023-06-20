module Testbench(intf tb_if); 
  initial begin tb_if.read = 0;
    repeat(3) #20
      // Driving Signal 
      tb_if.read = ~tb_if.read; 
    $finish;
  end 
endmodule

module top(); 
  bit clock;
  initial forever
    #5 clock = ~clock;
  intf bus_if(clock);
  // interface instantiation
  // Use interface for connecting DUT and TB
  dut d(bus_if); 
  Testbench TB (bus_if);
endmodule
