class packet;
  
  bit [31:0] addr;
  bit [31:0] data;
  bit   read;
  string  alloc;
  
 
  function new(bit [31:0] addr,data,bit read,string alloc);
    this.addr  = addr;
    this.data  = data;
    this.read = read;
    this.alloc = alloc;
  endfunction
  
 
  function void display();
    
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t read = %0h",read);
    $display("\t pkt_type  = %0s",alloc);
    
  endfunction
  
endclass

module cst;
  packet pkt;

  initial begin
    pkt = new(32'h10,32'hFF,1,"0X88$563");
    pkt.display();
  end
  
endmodule
