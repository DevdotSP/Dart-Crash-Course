void main() {
  print(int.parse('2') + 5);

  '2'.parseInt();
}

extension NumberParsing on String {
  parseInt() {
    return int.parse(this);
  }
}
