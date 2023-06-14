module temp_task;
  real value;

  task chng_unit;
    input real c;
    output real f;
    f = ((9 * c)/5 + 32);   
  endtask

  initial begin
    chng_unit(1,value);
    $display("\tTemperature in Fahrenheit = %.02f",value);
    chng_unit(2,value);
    $display("\tTemperature in Fahrenheit = %.02f",value);
    chng_unit(5,value);
    $display("\tTemperature in Fahrenheit = %.02f",value);
  end
endmodule
