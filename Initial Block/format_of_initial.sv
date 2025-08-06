`timescale 1ns / 1ps
module tb;
  
  reg a=0;
  
  initial a =1; //single line use of initial
  
  // multiline intial block
  initial begin
    a=1'b1;
    #10;
    a=1'b0;
  end 
  
  initial begin
    $monitor("a is: %0d",a);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
