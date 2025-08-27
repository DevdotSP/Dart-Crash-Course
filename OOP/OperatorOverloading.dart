// Example: Constructors with optional parameters and default values in Dart
void main() {
  // 🔹 Create an object of myClass by passing a value
  var c1 = MyClass(4);
  c1.get(); // Output: Number = 4

  // 🔹 Another object with a different value
  var c2 = MyClass(20);
  c2.get(); // Output: Number = 20

  // 🔹 No argument passed -> uses the default value (0)
  var c3 = MyClass();
  c3.get(); // Output: Number = 0

  // 🔹 Changing the value after object creation
  c3.num = 100;
  c3.get(); // Output: Number = 100
}

// Class with a constructor that has an optional parameter
class MyClass {
  int num;

  // Constructor: [this.num = 0] means
  // "num is optional, and if no value is passed, default = 0"
  MyClass([this.num = 0]);

  // Method to print the current value of num
  void get() => print('Number = ${this.num}');
}
