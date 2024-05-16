class A {
    void info() => print('Hi');
  
}

class B extends A {}

class C extends B {}

void main() {
   var a = A();
  a.info();
   var b = B();
  b.info();
  var c = C();
  c.info();
}
