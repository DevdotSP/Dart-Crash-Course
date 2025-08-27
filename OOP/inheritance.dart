// Example: Inheritance in Dart
// -----------------------------
// Inheritance allows a class to reuse properties and methods
// from another class. In Dart, you use `extends` for inheritance.

class A {
  // Base class method
  void info() => print('Hi from A');
}

// B extends A → B inherits everything from A
class B extends A {
  // B doesn't override anything here, so it reuses A's methods
}

// C extends B → which means it indirectly also inherits from A
class C extends B {
  // You can override methods if you want to customize behavior
  @override
  void info() => print('Hi from C (overridden)');
}

// Another class D that overrides and calls super
class D extends A {
  @override
  void info() {
    super.info(); // call parent class method first
    print('Hi from D (extra work after super)');
  }
}

// E has its own method
class E extends A {
  void greet(String name) => print('Hello $name, from E');
}

void main() {
  // ----------------------
  // Basic Inheritance Chain
  // ----------------------
  var a = A();
  a.info(); // Hi from A

  var b = B();
  b.info(); // Hi from A (inherited from A)

  var c = C();
  c.info(); // Hi from C (overridden)

  // ----------------------
  // Overriding and super
  // ----------------------
  var d = D();
  d.info();
  // Output:
  // Hi from A
  // Hi from D (extra work after super)

  // ----------------------
  // Class with extra methods
  // ----------------------
  var e = E();
  e.info();            // Hi from A (inherited)
  e.greet("Raphael");  // Hello Raphael, from E

  // ----------------------
  // Polymorphism Example
  // ----------------------
  List<A> list = [A(), B(), C(), D(), E()];
  for (var obj in list) {
    obj.info(); // Each calls its own implementation of info()
  }
}
