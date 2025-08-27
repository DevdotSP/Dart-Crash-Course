void main() {
  // 🔹 Basic list
  var list1 = [1, 2, 3];

  // 🔹 Using spread operator (...) to combine lists
  var list2 = [
    0,       // add a single element
    ...list1, // spread elements of list1
    ...[3, 3] // spread elements of another list
  ];
  print(list2); // Output: [0, 1, 2, 3, 3, 3]

  // 🔹 List with mixed int and double
  var a1 = [1, 2.5, 3.2, 4, 5, 6];

  // 🔹 `any()` checks if any element satisfies the condition
  print(a1.any((element) => element % 2 == 0)); // true (some elements are even)

  // 🔹 `every()` checks if all elements satisfy the condition
  print(a1.every((element) => element % 2 == 0)); // false (not all elements are even)

  // 🔹 `take(n)` returns first n elements
  print(a1.take(2)); // (1, 2.5)

  // 🔹 Calculating sum while using `map()`
  var sum = 0.0;
  List b = a1.map((e) {
    sum += e; // add element to sum
    return e; // map returns same element (identity)
  }).toList();

  print(b);   // Output: [1, 2.5, 3.2, 4, 5, 6]
  print(sum); // Output: 21.7
}
