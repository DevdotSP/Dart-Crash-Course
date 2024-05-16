void main() {
  var a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  // for (var i = 0; i < a.length; i++) {
  //   print(a[i][2]);
  // }

  for (var item in a) {
    for (var i in item) {
      print(i);
    }
  }
}
