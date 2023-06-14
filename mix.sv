module tb;
  string x;
  string y;
  typedef enum{IDLE,READY,CLK,NEXT} flop;
  flop f;
  struct { int a; byte b; bit[7:0] c; }my_data;
  initial 
    begin
      x = "Currently position of Flop is";
      y="Now Changed to ";
      my_data.a = 564;
      my_data.c = 25;
      my_data.b = 50;
      f = f.first();
      $display(" %s %s",x,f.name);
      f = f.next();
      $display("%s %s",y, f.name);
      f= f.last();
      $display("Processsed to %s",f.name);
      $display("a is %d", my_data.a);
      $display("a is %b or %d", my_data.b,my_data.b);
      $display("a is %b or %d or %h", my_data.c, my_data.c,my_data.c);
      end
endmodule


