void main() {
  // Example 1: Using break in a loop
  // The loop will stop completely when x == 5
  for (var x = 1; x <= 10; x++) {
    if (x == 5) break; 
    print('Loop with break → x = $x');
  }

  print('---');

  // Example 2: Using continue in a loop
  // The loop skips printing when x == 5, but continues the rest
  for (var x = 1; x <= 10; x++) {
    if (x == 5) continue; 
    print('Loop with continue → x = $x');
  }

  print('---');

  // Example 3: Nested for loop (Multiplication table 1–10)
  // Outer loop = row (i), inner loop = column (j)
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      print('$i * $j = ${i * j}');
    }
  }

  print('---');

  // Example 4: While loop
  var n = 1;
  while (n <= 5) {
    print('While loop → n = $n');
    n++;
  }

  print('---');

  // Example 5: Do-while loop
  // Runs the block at least once before checking the condition
  var m = 1;
  do {
    print('Do-while loop → m = $m');
    m++;
  } while (m <= 5);
}
