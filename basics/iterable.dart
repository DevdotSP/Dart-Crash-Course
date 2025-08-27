void main() {
  // ---------------------------
  // LIST EXAMPLES
  // ---------------------------
  // A List is an ordered collection of items (like an array in other languages).
  List<int> numbers = [2, 4, 6, 8]; // List of integers
  List<String> letters = ['a', 'b', 'c', 'd']; // List of strings
  List<double> decimals = [2.2, 4.4, 66.6, 8.7]; // List of doubles
  List<dynamic> mixed = [2, 4.4, 'hello', true]; // List with mixed data types

  print("List examples:");
  print(numbers);
  print(letters);
  print(decimals);
  print(mixed);

  // Iterating through list using for-in loop
  print("\nLooping through 'mixed' list:");
  for (var item in mixed) {
    print(item);
  }

  // Add / Remove items
  numbers.add(10); // Add element at end
  numbers.remove(4); // Remove element by value
  print("\nModified numbers list: $numbers");

  // ---------------------------
  // SET EXAMPLES
  // ---------------------------
  // A Set is an unordered collection of unique values (no duplicates allowed).
  Set<int> uniqueNumbers = {2, 3, 4, 5, 5}; // Duplicate "5" is ignored
  print("\nSet example:");
  print(uniqueNumbers);

  uniqueNumbers.add(10); // Add new element
  uniqueNumbers.remove(3); // Remove an element
  print("Modified set: $uniqueNumbers");

  // ---------------------------
  // MAP EXAMPLES
  // ---------------------------
  // A Map stores key-value pairs (like dictionaries or hash maps).
  Map<int, String> numberToLetter = {1: 'a', 2: 'b'};
  Map<String, double> studentGrades = {'Raphael': 70, 'Light': 80};

  print("\nMap examples:");
  print(numberToLetter);
  print(studentGrades);

  // Access value using key
  print("Raphael's grade: ${studentGrades['Raphael']}");

  // Add / Update value in Map
  studentGrades['John'] = 90; // Add new entry
  studentGrades['Raphael'] = 75; // Update existing entry
  print("Updated student grades: $studentGrades");

  // Iterate through Map
  print("\nLooping through student grades:");
  studentGrades.forEach((key, value) {
    print("$key: $value");
  });
}
