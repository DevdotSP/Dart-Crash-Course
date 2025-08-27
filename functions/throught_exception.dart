import 'dart:io';

void main() {
  // Run the age calculator program
  ageCalculator();
}

// 🔹 Age calculator function
// Continuously asks the user for their birth year until valid input is given
void ageCalculator() {
  while (true) {
    try {
      // Ask user to enter birth year
      print('Enter your birth year:');
      var input = stdin.readLineSync();

      // Convert input to integer
      var birthYear = int.parse(input!);

      // Calculate age
      var age = DateTime.now().year - birthYear;

      // Throw exception if birth year is in the future
      if (age < 0) throw FormatException('Birth year cannot be in the future!');

      // Throw exception if age is less than 6
      if (age < 6) throw Exception('Age must be at least 6 years old');

      // Print valid age
      print('Your age is $age years old');
      break; // Exit loop after successful calculation
    } on FormatException catch (e) {
      // Handles invalid input or future birth years
      print('Invalid input: $e. Please try again.');
    } catch (e) {
      // Handles other exceptions (e.g., age < 6)
      print(e);
    }
  }
}
