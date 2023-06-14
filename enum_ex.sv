module enum_method;
typedef enum (red,blue,green,yellow) colour;
colour c;
begin
c = c.first();
$display("%s",c.name);
c = c.next();
$display("%s",c.name);
c = c.last();
$display("%s",c.name);
c = c.prev();
$display("%s",c.name);
end
endmodule
