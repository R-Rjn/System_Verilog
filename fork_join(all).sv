//fork and join
//here we are simulating the fork and join with all variance of join,join_any and join_none with wait fork and disable fork.
module fork_join;
  int f;
  function void get(int a);
    int dl[9] = {1,2,2,3,10,4,5,56,6};
    $display("at %0t here from parent cell value is %0d",$time,dl[a]);
    endfunction
  task du(input real x,output real y);
            y = x/10;
    $display("The value of y for x=%.02f is %.02f",x,y);
   endtask
  
  typedef enum {sub[8] } ar;
  
  initial begin
    ar d;
    fork
      //Process-1
      begin
       #5 $display($time,"\tProcess-1 Started");
        du(157,f);
      #10$display($time,"\tProcess-1 Finished");
      end
       //Process-2
       begin
        $display($time,"\tProcess-2 Started");
         begin
           $display("The value of array[4] = %0d & array[7]=%0d",d.next(4),d.next(7));
         end
        $display($time,"\tProcess-2 Finished");
      end
    join
    //join_any
    //join_none
    //wait fork
    //disable fork;
    get(4);
    $display($time,"\tOutside Fork-Join");
    #20 $finish;
  end
endmodule
