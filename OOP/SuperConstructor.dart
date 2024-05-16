class A {
  A(msg) {
    print('Message 1 = $msg');
  }
}

class B extends A {
  B(msg) : super(msg) {
    print('Message 2 = $msg');
  }
}

class C extends B {
  C(String str) : super(str) {
    print('Message 3 = $str');
  }
}

void main() {
  var c = C('Hellowe');
}
