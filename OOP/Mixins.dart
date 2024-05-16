class A {
  void info() => print('Hi-1');
}

class B {
  void info2() => print('Hi-2');
}

class C {
  void info3() => print('Hi-3');
}

// To use mixins properly, define separate mixin classes
// and then apply them in the class that needs them.

// Mixin for info2 method
mixin Info2Mixin on C {
  void info2() => print('Hello-2');
}

// Mixin for info method
mixin InfoMixin on C {
  void info() => print('Hello-1');
}

// Class D extends C and uses the mixins
class D extends C with InfoMixin, Info2Mixin {
  // info3 method is inherited from C directly
  @override
  void info3() => print('Hello-3');
}

void main() {
  var d = D();
  d.info();   // Output: Hello-1
  d.info2();  // Output: Hello-2
  d.info3();  // Output: Hello-3
}
