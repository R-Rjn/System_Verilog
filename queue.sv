int a[$] = {5,67,42,84,8};
string b[$] = {"CPU","RAM","SSD","HDD"};
int read,position;

module qu;
  initial begin
read = a[0];
    $display("Here Read = %0d",read);
    read = a[3];
$display("Here Read = %0d",read);
    $display("_______________");
    $display("First element of a = %0d, b = %0s",a[0],b[0]);
    $display("Last element of a = %0d, b = %0s",a[$],b[$]);
    $display("__________LIFO___________");
    a = {a,4};
    b = {b,"DISPLAY"};
    $display("On inserting from Last, New Last element of a = %0d, b = %0s",a[$],b[$]);
    a = a[1:$];
    b = b[1:$];
    $display("On deleting First elements,New First element of a = %0d, b = %0s",a[0],b[0]);
    $display("__________FIFO___________");
    a = {21,a};
    b = {"PLAY",b};
    $display("After inserting First element, New First element of a = %0d, b = %0s",a[0],b[0]);
    a = a[1:$];
    b = b[1:$];
    $display("On deleting First Element, New First element of a = %0d, b = %0s",a[0],b[0]);
  end
endmodule
