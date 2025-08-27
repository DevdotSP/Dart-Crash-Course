void main() {
  // A single-line comment
  // var x = 10; // example of defining an integer variable (currently commented out)

  // Defining a boolean variable
  var x = false;

  /* 
   * This is a multi-line comment
   * You can use this style for longer explanations
   */

  // Converting the boolean value `x` into a String
  // If x = false, then y = "false"
  var y = x.toString();

  // Example of parsing: converting a string into an integer
  var num1 = '22'; // num1 is a String
  var num2 = int.parse(num1); // converts string "22" to integer 22
  print(num2.runtimeType); // Prints the type of num2 → int

  // Printing the variable values
  print('x = $x'); // prints "x = false"
  print(y + ' value'); // prints "false value"
  print(x.runtimeType); // prints the type of x → bool
  print(y.runtimeType); // prints the type of y → String
}
