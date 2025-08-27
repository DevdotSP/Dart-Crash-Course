// Example of using a class with fields and methods in Dart
// --------------------------------------------------------
// Here we create a `Human` class with properties (`name`, `age`, `height`)
// and a method (`fun`) that modifies one of its properties.

void main() {
  // Create first Human object
  var h1 = Human();
  h1.name = 'Raphael';  // set name
  h1.age = 22;          // set age
  h1.height = 170;      // set height in cm

  // Print h1's properties
  print('Name: ${h1.name}');
  print('Age: ${h1.age}');
  print('Height: ${h1.height}');
  print('------------------');

  // Create second Human object
  var h2 = Human();
  h2.name = 'Light';
  h2.age = 4;
  h2.height = 120;

  // Print h2's properties
  print('Name: ${h2.name}');
  print('Age: ${h2.age}');
  print('Height: ${h2.height}');
  print('------------------');
}

class Human {
  // Properties (fields) of Human
  String? name;   // nullable string (can be null if not set)
  late int age;   // `late` means it must be assigned before use
  int? height;    // nullable int (can be null if not set)

  // Method (function inside a class)
  // Adds 7 to the current age and prints it
  void fun() {
    age = age + 7;
    print('age = $age');
  }
}
