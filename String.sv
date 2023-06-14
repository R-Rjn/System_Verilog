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
end
endmodule
