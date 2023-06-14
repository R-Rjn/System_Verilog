module assosiative_array;
  int array[*];
  string index1;
  int index2;
  
  initial begin 
    repeat(5) begin
      array[index2]= index2*3 + 3;
      index2 = index2 + 2;
    end
    $display("Number of entries in array is %0d",array.num());
    $display("Array's are");
    foreach(array[i]) $display("array[%0d] = %0d",i,array[i]);
    array.first(index2);
    $display("First is %0d",array[index2]);
    $display("and");
     array.last(index2);
    $display("Last is %0d",array[index2]);
    if(array.exists(6))
      $display("Index 6 exists in array andd its value = %0d",array[6]);
    else 
      $display("Index 6 doesn't exists in array");
    if(array.exists(5))
      $display("Index 5 exists in array and its value = %0d",array[5]);
    else 
      $display("Index 5 doesn't exists in array");
    array.delete();
    index1 = "DEFG";
    array[index1[1]]=16;
    array[index1[2]]=7;
    array[index1[3]]=45;
    foreach(array[index1]) 
      $display("a_array2[%0s] = %0d",index1,array[index1]);

  end
endmodule
