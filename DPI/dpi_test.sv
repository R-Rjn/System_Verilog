module dpi_tb;
  import "DPI-C" function void done();
  initial
    begin
      $display("Before calling c-method");
      done();
      $display("After c-method");
    end
endmodule
