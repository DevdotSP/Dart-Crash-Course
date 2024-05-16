void main() {
  var c1 = myClass(4);
  c1.get();
  var c2 = myClass(20);
  c2.get();
  var c3 = myClass();
  c3.get();
}

class myClass {
  int num;
  myClass([this.num = 0]);

  void get() => print('Number = ${this.num}');
}
