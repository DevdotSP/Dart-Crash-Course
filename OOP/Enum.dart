void main() {
  print(info(Color.red));
  print(Color.values);
  print(Color.black);
  print(Color.blue);
  print(Color.red);
}

enum Color { red, blue, black }

String info(Color s) {
  switch (s) {
    case Color.red:
      return 'red';
    case Color.blue:
      return 'blue';
    case Color.black:
      return 'black';
    
  }
}
