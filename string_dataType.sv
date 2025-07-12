module string_ex ();

string my_string = "This is a orginal string";
string my_new_string;

initial begin
  $display ("My String = %s",my_string);
  
  my_string = "This is new string of different length"; // Assign new string of different size
  
  $display ("My String = %s",my_string); 
  
  my_new_string = my_string.toupper();// Change to uppercase and assign to new string
  
  $display ("My New String = %s",my_new_string);
  
  $display ("Length of new string %0d",my_new_string.len()); // Get the length of sting
  
  if (my_string.tolower() == my_new_string.tolower()) // Compare variable to another variable
    begin 
    $display("String Compare matches");
  end
  
  if (my_string.toupper() == my_new_string) // Compare variable to variable
    begin 
    $display("String Variable Compare matches");
  end
  #1 $finish;
end

endmodule
