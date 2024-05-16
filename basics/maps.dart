void main() {
  var x = {9: 'a', 8: 'b', 7: 'c'};
  Map y = {
    9: 'a',
    8: 'b',
    7: 'c',
  };

  x.forEach((key, value) {
    print('key: $key, value: $value');
  });

  y.forEach((key, value) {
    print('key: $key, value: $value');
  });

  print(y);

  print(x[9]);
  print(x.keys);
  print(x.values);
  print(x.entries);
  x.addAll({6: 'a', 5: 'c'});
  print(x);
  print(x.containsKey(6));
  print(x.containsValue('a'));
  x.remove(9);
  print(x);
  x.clear();
  print(x);
}
