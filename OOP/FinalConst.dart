void main() {
  final String a1 = 'a';
  final String a2 = 'a';

  // a1 = 'd'; //error
  // a2 = 'd'; // error

  final int a = DateTime.now().year;

  final List l1 = ['a', 'b', 'c'];
  const List l2 = ['a', 'b', 'c'];
  l1.add('i');

  var f = Final(5);
  print(l1);
  print(f.num1);
}

class Final {
  final int num1;
  static const int num2 = 5;

  Final(this.num1);
}
