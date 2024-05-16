class A {
  void info(msg) => print('Message = $msg');
}

class B extends A {
  void fun() {
    super.info('Hello');
  }
}

class C extends B {}

void main() {
  var c = C();
  c.fun();
}
