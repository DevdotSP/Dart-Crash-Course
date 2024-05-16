void main() {
  var a = 4;
  var b = 3;

  if (a < b)
    print('$a is smaller');
  else
    print('$b is smaller');

  a < b ? print('$a is smaller') : print('$b is smaller');

  var smallerNum = a < b ? a : b;
  print(smallerNum);

  var name;
  var v1 = name ?? "Raphael";
  print(v1);

  // if (a < b) {
  //   print('$a is smaller');
  // } else {
  //   print('$b is smaller');
  // }
}
