module event_c;
  bit clk;
  bit reset;
  always #3 clk = ~clk;

  
  always @(posedge clk iff reset == 0)
  begin //block-1
    $display("Time = %0t | This is from part-1",$time);
  end //block-1

  always @(posedge reset or negedge reset)
  begin //block-2
    $display("Time = %0t | Value of reset = %0d",$time,reset);
  end //block-2

  initial begin
   #60 $finish;
  end
  initial begin
    reset = 1;
    #5 reset = 0;
    #9 reset = 1;
    #3 reset = 0;
    #15 reset = 1;
    #1 reset = 0;
  end
endmodule
