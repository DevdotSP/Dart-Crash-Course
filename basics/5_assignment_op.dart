void main() {
  // 🔹 Arithmetic assignment operators in Dart
  // They combine arithmetic (+, -, *, /, etc.) with assignment (=)

  double x = 10;  
  print('Initial x = $x');

  // ➕ Add and assign
  x += 20; // same as: x = x + 20;
  print('After x += 20 → x = $x'); // 30

  // ➖ Subtract and assign
  x -= 5; // same as: x = x - 5;
  print('After x -= 5 → x = $x'); // 25

  // ✖ Multiply and assign
  x *= 2; // same as: x = x * 2;
  print('After x *= 2 → x = $x'); // 50

  // ➗ Divide and assign (result is double)
  x /= 5; // same as: x = x / 5;
  print('After x /= 5 → x = $x'); // 10.0 (notice it becomes double)

  // ⏹ Integer division and assign (~/=)
  var y = 20;
  y ~/= 3; // same as: y = y ~/ 3; (ignores remainder)
  print('After y ~/= 3 → y = $y'); // 6

  // ➕➕ Increment (adds 1)
  var a = 5;
  a++;
  print('After a++ → a = $a'); // 6

  // ➖➖ Decrement (subtracts 1)
  a--;
  print('After a-- → a = $a'); // 5
}
