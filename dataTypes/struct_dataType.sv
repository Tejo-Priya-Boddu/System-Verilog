`timescale 1ns/10ps

// Type define a struct, and put it outside module
// So that other modules can also use it
typedef struct {
  byte a;
  reg  b;
  shortint unsigned c;
} myStruct;

module struct_data ();

//local struct.
struct {
  byte a;
  reg b;
  shortint unsigned c;
} myLocalStruct = '{11,1,101};



  myStruct object = '{10,0,100};

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,struct_data);
  $display ("a = %b b = %b c = %h", object.a, object.b, object.c);
  
  $display ("a = %b b = %b c = %h", myLocalStruct.a,
       myLocalStruct.b, myLocalStruct.c);
  
  #1 $finish;
end

endmodule
