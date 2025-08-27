void main() {
  // 🔹 Initial list with int and double elements
  var a1 = [1, 2.5, 3.2, 4, 5, 6];
  print('Original list a1 = $a1');

  // 🔹 `where` filters elements based on a condition (returns all matching elements)
  var b1 = a1.where((element) => element < 5).toList();
  // All elements less than 5 → [1, 2.5, 3.2, 4]

  // 🔹 `firstWhere` returns the first element that satisfies the condition
  // If no element matches, returns value from `orElse`
  var b2 = a1.firstWhere((element) => element % 2 == 0, orElse: () => 0);
  // First even element → 4

  // 🔹 `lastWhere` returns the last element that satisfies the condition
  // If no element matches, returns value from `orElse`
  var b3 = a1.lastWhere((element) => element % 2 == 0, orElse: () => 0);
  // Last even element → 6

  // 🔹 `indexWhere` returns the index of the first element satisfying the condition starting from given index
  var c1 = a1.indexWhere((element) => element % 2 == 0, 4);
  // First even element starting from index 4 → 5 (element = 6)

  // 🔹 `lastIndexWhere` returns the index of the last element satisfying the condition
  var c2 = a1.lastIndexWhere((element) => element % 2 == 0);
  // Last even element → index 5

  // 🔹 `whereType` filters elements of a specific type (e.g., double)
  var d = a1.whereType<double>().toList();
  // All double elements → [2.5, 3.2]

  // 🔹 Print results
  print('Elements < 5 (b1) = $b1');
  print('First even element (b2) = $b2');
  print('Last even element (b3) = $b3');
  print('Index of first even element from index 4 (c1) = $c1');
  print('Index of last even element (c2) = $c2');
  print('All double elements (d) = $d');
}

/* 
Output:

Original list a1 = [1, 2.5, 3.2, 4, 5, 6]
Elements < 5 (b1) = [1, 2.5, 3.2, 4]
First even element (b2) = 4
Last even element (b3) = 6
Index of first even element from index 4 (c1) = 5
Index of last even element (c2) = 5
All double elements (d) = [2.5, 3.2]


*/
