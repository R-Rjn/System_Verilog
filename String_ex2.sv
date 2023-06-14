module tb;
string A;
string B;
string C;
initial 
  begin
    A = "ABCDEFG";
    B = "EMBEDDED SYSTEMS";
    C = "HELLO WORLD!";
    $display("Length of A =%d , Length of B =%d , Length of C =%d",A.len(),B.len(),C.len());
    $display("%s", A.getc(8));
    $display("%s",C.tolower);
end
endmodule
