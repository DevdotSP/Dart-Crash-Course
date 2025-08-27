void main() {
  // 🔹 Example 1: Nested FOR loop
  // Outer loop controls 'i' (rows)
  // Inner loop controls 'j' (columns)
  // This will run 10 × 10 = 100 times in total
  for (var i = 1; i < 11; i++) {
    for (var j = 1; j < 11; j++) {
      print('Outer i = $i, Inner j = $j');
    }
  }

  print('-----------------------------');

  // 🔹 Example 2: Nested WHILE loop
  // Same logic as above, but written with while
  var i = 1;
  while (i < 11) {
    var j = 1;
    while (j < 11) {
      print('Outer i = $i, Inner j = $j');
      j++; // increment inner loop
    }
    i++; // increment outer loop
  }

  print('-----------------------------');

  // 🔹 Example 3: Using nested loop to print a multiplication table (1 to 5)
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      print('$i × $j = ${i * j}');
    }
  }
}
