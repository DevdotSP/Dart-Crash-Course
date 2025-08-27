void main() {
  // 🔹 Create instances of concrete classes
  var c = Circle();
  var r = Rectangle();
  var sq = Square();

  // 🔹 Demonstrate passing an abstract type as a parameter
  var a = A();
  a.fun(c); // Pass Circle
  a.fun(r); // Pass Rectangle
  a.fun(sq); // Pass Square

  print("---- Individual Calls ----");
  // Each object calls its own overridden method
  c.info(); // Circle
  r.info(); // Rectangle
  sq.info(); // Square

  print("---- Polymorphism in a List ----");
  // 🔹 A list of Shape (abstract type), holding different subclasses
  List<Shape> data = [c, r, sq];
  for (var item in data) {
    item.info(); // Each subclass method is called dynamically
  }

  print("---- Extra Example: Passing Different Shapes ----");
  // 🔹 Show how the same function can handle multiple subclasses
  performInfo(Circle());
  performInfo(Rectangle());
  performInfo(Square());
}

/// A class that takes any Shape object and calls its `info` method.
class A {
  void fun(Shape q) {
    print("Calling info() from A:");
    q.info(); // Dynamic dispatch: executes the correct subclass method
  }
}

/// Abstract base class (cannot be directly instantiated).
/// Provides a default `info()` implementation that can be overridden.
abstract class Shape {
  void info() => print('Generic Shape');
}

/// Circle overrides the info() method
class Circle extends Shape {
  @override
  void info() => print('Circle');
}

/// Rectangle overrides the info() method
class Rectangle extends Shape {
  @override
  void info() => print('Rectangle');
}

/// Square overrides the info() method
class Square extends Shape {
  @override
  void info() => print('Square');
}

/// 🔹 Example utility function:
/// Takes any Shape (polymorphism) and calls `info()`.
void performInfo(Shape shape) {
  print("Performing info():");
  shape.info();
}
