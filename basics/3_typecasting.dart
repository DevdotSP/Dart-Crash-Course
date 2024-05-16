void main() {
  // var x = 10; //defining comment
  var x = false;

  /* this is comment */

  // var y = x.toDouble();
  var y = x.toString();

  var num1 = '22';
  var num2 = int.parse(num1);
  print(num2.runtimeType);

  print('x = $x');
  print(y + ' value');
  print(x.runtimeType);
  print(y.runtimeType);
}
