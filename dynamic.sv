module dynamic_arr;
  bit [7:0]d_array[];
initial begin
  d_array = new[4];
  d_array= {1,2,8,7};
  $display("Size=%d",d_array.size);
  foreach(d_array[i]) $display("array[%0d] = [%0d]",i,d_array[i]);
   d_array = new[7](d_array);
  d_array[4:6] = {4,5,3};
  $display("-------------");
  $display("resize=%d",d_array.size);
  foreach(d_array[i]) $display("new array[%0d] = [%0d]",i,d_array[i]); 
  d_array.reverse;
  $display("-------------");
  foreach(d_array[i]) $display("reverse array[%0d] = [%0d]",i,d_array[i]);  
  d_array.sort;
  $display("-------------");
  foreach(d_array[i]) $display("sorted array[%0d] = [%0d]",i,d_array[i]);
  d_array = new[2];
  $display("-------------");
  $display("size=%d",d_array.size);
  foreach(d_array[i]) $display("array[%0d] = [%0d]",i,d_array[i]);
  d_array.delete;
  $display("-------------");
  $display("array size=%d",d_array.size);
  foreach(d_array[i]) $display("array[%0d] = [%0d]",i,d_array[i]); 
  
end
endmodule
