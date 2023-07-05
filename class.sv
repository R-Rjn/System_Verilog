//Sample for class creation
class Best_app;
  int effective;
  string app;
  
  task value(int i);
      effective = i;
  endtask
    
   function string get();
     if (effective >10 & effective < 60) begin
        app = "Bluestack Gallery store TikTok Pubg";
      end
     else if (effective < 10) begin
        app = "Malicious Apps May contain virus";
      end
        else begin 
          app = "Google Brave Youtube Microsoft";
        end
      return app;
    endfunction
     endclass
          
 module My_app;
   Best_app verified;
   
   initial begin
     Best_app unverified = new();
     verified = new();
     verified.value(88);
     unverified.value(6);
     $display("\tVerified by google :: Apps = %0s",verified.get());
     $display("\tUnVerified by google :: Apps = %0s",unverified.get());
   end
 endmodule
