// Example: Inheritance chain with `super` and method access

class A {
  // Base class method
  void info(String msg) => print('Message from A: $msg');
}

class B extends A {
  // Child class of A
  void fun() {
    // `super.info()` calls A's version of the method
    super.info('Hello from B using super');
  }

  // B can also add its own method
  void greet() => print('Greetings from class B');
}

class C extends B {
  // Class C does not declare any new methods,
  // but it *inherits* all methods from B and A:
  // - From A → info()
  // - From B → fun(), greet()

  void show() {
    print('--- Inside class C ---');

    // 1. Call B's method (inherited)
    fun(); // calls fun() from B, which internally uses A's info()

    // 2. Call A's method directly (inherited transitively)
    info('Direct call from C to A’s method');

    // 3. Call B’s other method (greet)
    greet();
  }
}

void main() {
  var c = C();

  // Even though C has no methods defined (other than show),
  // it inherits everything from B and A.
  c.show();

  print('\n--- Accessing inherited methods directly from C object ---');

  c.fun();   // B’s method
  c.greet(); // B’s method
  c.info('Message sent directly to A’s method');
}
