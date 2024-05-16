void main() {
  var a = A();
  a.x = 10;
  a.y = 3.4;
  print(a.x);
  print(a.y);

  var b = A();
  b.x = 4;
  b.y = 3.3;
  print(b.x);
  print(b.y);
}

class A {
  late int x;
  late double y;
}
