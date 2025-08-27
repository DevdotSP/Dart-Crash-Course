import 'dart:io';

void main() {
  // This loop will keep asking until a valid birth year is entered
  while (true) {
    try {
      // Ask user for input
      print('Enter your birth year:');
      var birthYear = num.parse(stdin.readLineSync()!); // Convert string to number

      // Calculate age based on current year
      var age = DateTime.now().year - birthYear;

      print('✅ Your Age is $age years old');

      // Exit the loop if input is valid
      break;
    } catch (e) {
      // If parsing fails (e.g., user typed "hello"), handle the error
      print('⚠️ Invalid Value, please enter a valid number.');
      print('Error Message: $e');
    }
  }

  // -------------------------
  // 🔹 Example 2: Keep asking until user types "exit"
  while (true) {
    print('\nType something (or "exit" to quit):');
    var input = stdin.readLineSync()!;

    if (input.toLowerCase() == "exit") {
      print('👋 Program terminated.');
      break; // stop the loop
    } else {
      print('You typed: $input');
    }
  }

  // -------------------------
  // 🔹 Example 3: Validate number input (only positive numbers allowed)
  while (true) {
    try {
      print('\nEnter a positive number:');
      var number = int.parse(stdin.readLineSync()!);

      if (number <= 0) {
        throw Exception("Number must be greater than 0"); // custom error
      }

      print('✅ You entered a valid number: $number');
      break;
    } catch (e) {
      print('⚠️ Invalid input. Please try again.');
      print('Error Message: $e');
    }
  }
}
