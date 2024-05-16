import 'dart:math';

void main() {
  var degree = Random().nextInt(100);
  print('Degree = $degree');

  if (degree >= 90) {
    if (degree > 94) {
      print('A');
    } else {
      print('-A');
    }
  } else if (degree >= 80) {
    if (degree > 84) {
      print('B');
    } else {
      print('-B');
    }
  } else if (degree >= 70) {
    if (degree > 74) {
      print('C');
    } else {
      print('-C');
    }
  } else if (degree >= 60) {
    if (degree > 64) {
      print('D');
    } else {
      print('-D');
    }
  }
}
