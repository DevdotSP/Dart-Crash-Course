import 'dart:async';

void main() {
  final f1 = Future(info);
  f1.then((value) => print(value)).catchError((e) => print(e));

  final f2 = Future.value(2).then((value) => print(value));

  final f3 = Future.delayed(Duration(seconds: 2), () => print(3));

  print(1);
}

double info() {
  return 2.0;
}
