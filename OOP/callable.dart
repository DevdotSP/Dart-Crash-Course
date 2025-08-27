// Example of a "callable class" in Dart
// --------------------------------------
// In Dart, if you define a method named `call` inside a class,
// you can invoke an instance of that class just like a function.
// This makes the class instance *callable*.

void main() {
  var human1 = Human();

  // Because Human defines `call(...)`,
  // we can treat `human1` like a function:
  human1('Ali', 27);
}

class Human {
  // The special `call` method
  // --------------------------
  // Any instance of Human can now be "called"
  // as if it were a function, passing name and age.
  void call(String name, int age) {
    print('Name = $name || Age = $age');
  }
}
