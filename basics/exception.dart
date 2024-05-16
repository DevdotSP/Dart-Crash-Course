import 'dart:io';

void main() {
  while (true) {
    try {
      print('Enter your birth year:');
      var birthYear = num.parse(stdin.readLineSync()!);
      var age = DateTime.now().year - birthYear;

      print('Your Age is $age years old');

      break;
    } catch (e) {
      print('Invalid Value');
      print('Error Message $e');
    }
  }
}
