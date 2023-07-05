class deal;
  rand int a[5];
  
  constraint c1{foreach(a[i]){ a[i]>3;
                              a[i]<13;}}; 
endclass
module sem;
  
  task digi(int x[5]);
    foreach(x[i]) begin
      x[i] = x[i]*3; 
      $display("\tThe 3 times multiple of random no. at %0d = %0d",i,x[i]);
    end
      endtask
  semaphore sure;
  deal done;
  initial begin
    done = new();
    done.randomize();
    sure = new(3);
    fork
      display();
      display();
    join 
  end
  task automatic display();
    sure.get(3);
    $display($time,"\tHere the process is done!");
    digi(done.a);
    #26;
    $display("\t_________done all part_________");
    sure.put(3);
  endtask
endmodule
