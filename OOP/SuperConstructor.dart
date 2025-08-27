// Example: Constructor chaining using `super`

// 🔹 Base class
class A {
  // Constructor of class A
  A(String msg) {
    print('Message 1 (from A) = $msg');
  }
}

// 🔹 Class B extends A
class B extends A {
  // Constructor of class B
  // Uses `super(msg)` to call the parent (A) constructor FIRST
  B(String msg) : super(msg) {
    print('Message 2 (from B) = $msg');
  }
}

// 🔹 Class C extends B
class C extends B {
  // Constructor of class C
  // Uses `super(str)` to call the parent (B) constructor FIRST
  C(String str) : super(str) {
    print('Message 3 (from C) = $str');
  }
}

void main() {
  // Create an object of class C
  var c = C('Hellowe');

  // Execution order:
  // 1. Class A's constructor runs (because C -> B -> A)
  // 2. Class B's constructor runs
  // 3. Class C's constructor runs
}
