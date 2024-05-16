void main() {
  var list = [3, 5, 6, 7];
  list.forEach((element) => print(element));
  a();
  lam1();
  print(lam2());
  lam3(3, 4);
  print(lam4(3, 4));
}

//lambda example or arrow function on other language
//var a = (element) => print(element);
void Function() a = () => print(3 + 4);
void lam1() => print(3 + 4);
int lam2() => 3 + 4;
void lam3(x, y) => print(x + y);
int lam4(x, y) => x + y;

void fun1() {
  print(3 + 4);
}

int fun2() {
  return 3 + 4;
}

void fun3(x, y) {
  print(x + y);
}

int fun4(x, y) {
  return x + y;
}
