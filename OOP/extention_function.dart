// Dart Extension Methods - All in One File
// ----------------------------------------
// Extensions let you add new methods or properties to existing classes
// without modifying their original source code.

// Entry point
void main() {
  // Example 1: String extension - parseInt()
  print('2'.parseInt() + 5); // 7

  // Example 2: String extension - reversed()
  print('hello'.reversed()); // "olleh"

  // Example 3: int extension - isEven / isOdd
  print(4.isEvenNumber); // true
  print(7.isOddNumber);  // true

  // Example 4: List extension - get second element safely
  print([10, 20, 30].second); // 20
  print([5].second);          // null (safe!)
}

// -------------------- EXTENSIONS --------------------

// Extension on String: add parseInt()
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
    // `this` refers to the String instance
  }
}

// Extension on String: reverse text
extension StringExtensions on String {
  String reversed() => split('').reversed.join();
}

// Extension on int: check even or odd
extension IntExtensions on int {
  bool get isEvenNumber => this % 2 == 0;
  bool get isOddNumber => this % 2 != 0;
}

// Extension on List<T>: get second element safely
extension ListExtensions<T> on List<T> {
  T? get second => length >= 2 ? this[1] : null;
}
