// typedef void operation(a, b); "this is used for safe using operation like subtraction, multiplication, addtion, division"

void calc(x, y, Function s) {
  s(x, y);
}

void main() {
  calc(3, 4, mul);
}

void sum(a, b) {
  print('$a + $b = ${a + b}');
}

void sub(a, b) {
  print('$a - $b = ${a - b}');
}

void mul(a, b) {
  print('$a * $b = ${a * b}');
}

void div(a, b) {
  print('$a / $b = ${a / b}');
}
