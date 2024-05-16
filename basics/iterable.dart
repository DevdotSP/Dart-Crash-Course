void main() {
  //List
  List<int> li = [2, 4, 6, 8];
  List<String> li2 = [
    'a',
    'b',
    'c',
    'd',
  ];
  List<double> li3 = [2.2, 4.4, 66.6, 8.7];
  List<dynamic> li4 = [2, 4.4, 'a', true];
  print(li);
  print(li2);
  print(li3);
  print(li4);

  for (var item in li4) {
    print(item);
  }

  //Set
  Set<int> s1 = {2, 3, 4, 5};

  Map<int, String> m = {1: 'a', 2: 'b'};
  Map<String, double> mama = {'Raphael': 70, 'Light': 80};
  print(mama['Raphael']);
}
