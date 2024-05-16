abstract class A {
  void info();
}

abstract class B extends A {
  void info2();
}

class C implements B, A {
  @override
  void info() => print('Hi-1');

  @override
  void info2() {
     void info2() => print('Hi-2');
  }
}

void main() {
  var c = C();
  c.info();
  c.info2();
}
