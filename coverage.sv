module cg();
  bit  a;
  bit [0:2] b;
//  logic en;
  
  covergroup cv;
    cp1: coverpoint a{
      bins total = {0,1};
    }
    cp2: coverpoint b{
      bins p1={1,[2:4]};
      bins p2={[5:$]};
      bins p3 = {0};
    }
  endgroup
  cv covered = new();
   initial begin
    covered.start();
    covered.set_inst_name("my_cg");
    
    forever begin
      covered.sample();
      #5;
    end
  end
  
//   task drive(input x,y);
//      a <= x;
//        b <= y;
//     $display(" a = %0d | b = %0d", a,b);
//   endtask
  
  initial begin
//     drive(1,3'b010);
    a = $random;
    b = $random;
     $display(" a = %0d | b = %0d", a,b);
    covered.stop();
    $display("Coverage = %f", covered.get_coverage());
    #5 $finish;
  end 
endmodule
