// Example of using Enums in Dart
// -------------------------------
// Enums (short for "enumerations") are used to define a fixed set of named values.
// They are very useful when you want to represent a small, constant group of options
// such as colors, states, directions, roles, etc.

void main() {
  // Example 1: Passing an enum value to a function
  print(info(Color.red));   // "red"
  print(info(Color.blue));  // "blue"

  // Example 2: Printing all enum values
  print(Color.values); // [Color.red, Color.blue, Color.black]

  // Example 3: Accessing enum values directly
  print(Color.black); // Color.black
  print(Color.blue);  // Color.blue
  print(Color.red);   // Color.red

  // Example 4: Get the index of an enum (position in declaration order)
  print(Color.red.index);   // 0
  print(Color.blue.index);  // 1
  print(Color.black.index); // 2

  // Example 5: Loop through all enum values
  for (var color in Color.values) {
    print('Color name: ${info(color)} || Index: ${color.index}');
  }

  // Example 6: Using enum in a conditional
  var favorite = Color.blue;
  if (favorite == Color.blue) {
    print("Your favorite color is blue!");
  }

  // Example 7: Convert enum to string (default .toString())
  print(Color.red.toString());  // "Color.red"

  // Example 8: Get just the enum name (since Dart 2.15+)
  print(Color.red.name); // "red"
  print(Color.black.name); // "black"
}

enum Color { red, blue, black }

// Function that uses enum in a switch statement
String info(Color s) {
  switch (s) {
    case Color.red:
      return 'red';
    case Color.blue:
      return 'blue';
    case Color.black:
      return 'black';
  }
}
