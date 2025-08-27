// 🔹 Base abstract class: defines a contract (must implement info)
abstract class A {
  void info(); // Abstract method (no body)
}

// 🔹 Another abstract class that EXTENDS A
// This means: Any class that implements/extends B must also implement `info` (from A)
// and `info2` (from B).
abstract class B extends A {
  void info2(); // Another abstract method
}

// 🔹 Concrete class that IMPLEMENTS both A and B
// `implements` means C must provide actual code for ALL methods from A and B.
class C implements B, A {
  @override
  void info() => print('Hi from info() in A');

  @override
  void info2() => print('Hi from info2() in B');
}

void main() {
  // You cannot instantiate abstract classes directly:
  // var a = A(); ❌ ERROR
  // var b = B(); ❌ ERROR

  // ✅ But you can instantiate class C, since it provides implementations
  var c = C();
  c.info();   // Output: Hi from info() in A
  c.info2();  // Output: Hi from info2() in B
}
