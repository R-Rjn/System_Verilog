module data;
  mailbox typed=new();
  initial begin
    bit [3:0]a;
    int i;
    while(i<10) begin
    a = $random;
    typed.put(a);
    $display("The data send is %0d",a);
      i++;
    end
  end
  
  initial begin
    bit [3:0] a;
    forever begin
    typed.get(a);
    $display("The data recieved is %0d",a);
    end
  end
endmodule
