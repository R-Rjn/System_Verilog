module tb;
string A;
string B;
initial
 begin
A = "RAM ";
B = "SHAYAM";
   $display(" %d ",A.len() ); //printing length of string A.
$display(" %s ",A.getc(5) );
$display(" %s ",A.tolower);
$display(" %s ",B.toupper);
$display(" %d ",B.compare(A) );
$display(" %d ",A.compare("test") );

end
endmodule
