module static_arr;
  int array1[3][2];
  bit [3:0]array2[2:0];
initial begin
  array1= '{'{1,2},'{6,7},'{4,5}};
  array2= '{'{1,0,1,0},'{1,1,1,1},'{0,0,0,0}};
  foreach(array1[i,j]) $display("array1[%0d][%0d] = [%0d]",i,j,array1[i][j]);
  $display("________Bit display________");
  foreach(array2[i,j]) $display("array2[%0d][%0d] = [%0b]",i,j,array2[i][j]);
end
endmodule
