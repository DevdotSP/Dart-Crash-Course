import 'dart:io';

void main() {
  print('Enter your birth year:');
  var birthYear = num.parse(stdin.readLineSync()!);
  var age = DateTime.now().year - birthYear;
  
  print('Your Age is $age years old');
}
