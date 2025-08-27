void main() {
  // 🔹 Basic string printing
  print('Hello World'); 
  print("Hass's Lessons"); // Using double quotes so the single quote inside is valid

  // 🔹 Multi-line string using triple single-quotes (''') or triple double-quotes (""")
  print('''
HELLO
WORLD
''');

  // 🔹 Numbers and expressions
  print(3 + 5); // Dart evaluates math before printing → output: 8

  // 🔹 String interpolation (embed expressions inside ${})
  print('3+5 = ${3 + 5}'); 

  // 🔹 Direct variable embedding
  var name = 'Raphael';
  print('My name is $name'); // shorthand when it's a single variable
  print('My name length is ${name.length}'); // expression must use ${}

  // 🔹 Escaping special characters
  print('It\'s a sunny day!');  // escape single quote
  print("The symbol is \\");    // prints a backslash

  // 🔹 Concatenation (joining strings)
  var first = 'Hello';
  var second = 'Dart';
  print(first + ' ' + second); // using + operator
  print('$first $second');     // cleaner using interpolation

  // 🔹 String repetition (correct way in Dart)
  print(List.filled(3, 'Hi! ').join()); // → Hi! Hi! Hi! 

  // 🔹 Raw strings (ignore escape characters)
  print(r'This is a raw string \n it won\');

  // 🔹 Printing boolean and other types
  bool isActive = true;
  print('Is active? $isActive');

  // 🔹 Printing numbers
  int a = 10;
  double b = 3.14;
  print('Integer: $a, Double: $b');

  // 🔹 Printing with formatting
  double pi = 3.141592653589793;
  print('PI = ${pi.toStringAsFixed(2)}'); // rounds to 2 decimal places

  // 🔹 Printing collections
  var list = [1, 2, 3];
  var map = {'name': 'Dart', 'type': 'Language'};
  print('List: $list');
  print('Map: $map');
}
