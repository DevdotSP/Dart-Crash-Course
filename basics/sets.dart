void main() {
  // 🔹 Declaring a Set (unique collection, no duplicates)
  var x = {4, 5, 6, 7, 8, 9}; // inferred type Set<int>
  Set y = {4, 5, 6, 7, 8, 9}; // explicit Set (default is dynamic type if not specified)

  // 🔹 Loop through elements in the set
  x.forEach((element) {
    print("Element from x: $element");
  });

  // 🔹 Print the whole set
  print("Set y: $y");

  // 🔹 Convert Set to List
  List z = x.toList();
  print("Converted List z: $z");

  // 🔹 Adding elements to a Set
  x.add(10); // add single value
  print("After add(10): $x");

  x.addAll({2, 3}); // add multiple values
  print("After addAll({2,3}): $x");

  // 🔹 Checking properties of the Set
  print("Length of x: ${x.length}");
  print("First element at index 0: ${x.elementAt(0)}");
  print("Does x contain number 5? ${x.contains(5)}");

  // 🔹 Removing elements
  x.remove(5);
  print("After removing 5: $x");

  // 🔹 Clearing all elements
  x.clear();
  print("After clear(): $x");

  // ==========================================================
  // 🔹 Set Operations (Math-like operations)
  var a = {4, 5, 6, 7};
  var b = {6, 7, 8, 9};

  // Intersection → elements common to both sets
  print("Intersection (a ∩ b): ${a.intersection(b)}"); // {6, 7}

  // Union → all unique elements from both sets
  print("Union (a ∪ b): ${a.union(b)}"); // {4,5,6,7,8,9}

  // Difference → elements in a but NOT in b
  print("Difference (a - b): ${a.difference(b)}"); // {4,5}

  // Difference → elements in y but NOT in a
  print("Difference (y - a): ${y.difference(a)}");

  // ==========================================================
  // 🔹 Extra examples:
  var names = {"Alice", "Bob", "Charlie"};
  names.add("Alice"); // duplicate, will NOT be added again
  print("Names set (duplicates ignored): $names");

  // Using where() to filter items
  var evenNumbers = {1, 2, 3, 4, 5, 6}.where((n) => n.isEven);
  print("Even numbers only: $evenNumbers");

  // Convert back to list after filtering
  print("Even numbers list: ${evenNumbers.toList()}");
}
