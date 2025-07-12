`timescale 1ns / 100ps
module int_literals();
  integer a; // use logic instead of integer

  initial begin
    $monitor("%g ns a = %h", $time, a);
    a = '0;
    #1 a = 'x;
    #1 a = '1;
    #1 a = 'z;
    #1 a = 'b0;
    #1 a = 'bx;
    #1 a = 'b1;
    #1 a = 'bz;
    #1 $finish;
  end

  initial begin
    $display("Simulation started");
  end
endmodule
