import 'dart:io';

void main() {
  // Ask the user to enter their birth year
  print('Enter your birth year:');

  // Read user input from the console
  // stdin.readLineSync()! → gets the text entered by the user
  // num.parse(...) → converts the input string into a number
  var birthYear = num.parse(stdin.readLineSync()!);

  // Get the current year using DateTime.now().year
  // Then calculate age by subtracting birthYear from current year
  var currentYear = DateTime.now().year;
  var age = currentYear - birthYear;

  // Display the calculated age
  print('You are $age years old in $currentYear.');
}
