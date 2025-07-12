`timescale 1ns/10ps

// Type define a struct
typedef struct {
  byte a;
  reg  b;
  shortint unsigned c;
} myStruct;

module typedef_data ();


typedef integer myinteger; // Full typedef here


typedef myinteger;// Typedef declaration without type

myinteger a = 10;// Typedef used here
  
  myStruct object = '{10,0,100}; //struct object

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,typedef_data);
  $display ("a = %d", a);
  $display ("Displaying object"); 
  $display ("a = %b b = %b c = %h", object.a, object.b, object.c);
  #1 $finish;
end

endmodule
