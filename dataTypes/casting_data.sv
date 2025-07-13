module casting_data();

int a = 0;
shortint b = 0;

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,casting_data);
  $monitor ("%g a = %d b = %h", $time, a , b);
  #1 a = int'(2.3 * 3.3);
  #1 b = 32'hDEADBEEF; // since b is short int it only takes last 16 bits   
  #1 $finish;
end

endmodule
