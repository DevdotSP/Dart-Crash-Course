import 'dart:io';

void main() {
  // info();
  ageCalculator();
}

void info() {
  try {
    for (var i = 0; i <= 10; i++) {
      if (i == 5) {
        throw FormatException;
      }
      print('i=$i');
    }
  } catch (e) {
    print(e);
  }
}

void ageCalculator() {
  while (true) {
    try {
      print('Enter Your Birthday Year:');
      var birth_year = stdin.readLineSync();
      var age = DateTime.now().year - int.parse(birth_year!);
      print(age);
      if (age < 0) throw FormatException();
      if (age < 6) throw Exception;
      print('Your Age is $age Years old');
      break;
    } on FormatException {
      print('Invalid Data... try again');
    } catch (e) {
      print('Age under 6 years old');
    }
  }
}
