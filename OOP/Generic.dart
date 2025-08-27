// Example: Using `late` variables in Dart
// ----------------------------------------
// `late` means: "this variable will be initialized later,
// but MUST be assigned before it is used."
// Useful when you don’t want to (or cannot) initialize a variable immediately.

void main() {
  // Create first object of class A
  var a = A();
  a.x = 10;   // assign value to x
  a.y = 3.4;  // assign value to y
  print(a.x); // 10
  print(a.y); // 3.4

  // Create second object of class A
  var b = A();
  b.x = 4;    // assign value to x
  b.y = 3.3;  // assign value to y
  print(b.x); // 4
  print(b.y); // 3.3
}

class A {
  // Properties marked with `late` must be assigned before use.
  // They don’t need an initial value at declaration,
  // but trying to access them without assigning first will cause a runtime error.
  late int x;
  late double y;
}
