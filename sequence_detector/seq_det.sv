//Design code for sequence detector.
module seq_dt (
    output logic y,
    input logic x,clk,reset
);
typedef enum {s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11} state;
state s;
logic [1:0] st;
always @(posedge clk) 
    if(reset==1'b1) begin
        y<=1'b0;
      st <= s.first();
    
end

always @(posedge clk)
begin
    s = s.first();
    case(st)
     s:begin
     st <= x ? s.next():s;
      y<=0;  
     end
      s.next():begin
        st <= x ? s.next():s.next(2);
        y<=0;
     end
      s.next(2):begin
        st <= x ? s.last():s.next(2);
            y<=0;
        end
      s.last():begin
        st <= x ? s.first():s.first();
        y <= x ? 1:0;
      end
      default: begin
         st <= s.first();
         y <=0;
      end
  endcase
end
    
endmodule
