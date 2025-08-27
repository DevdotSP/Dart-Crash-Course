void main() {
  // Example values
  var x = 2;
  var y = 3;
  var a = 0;

  // Logical AND (&&): true only if BOTH conditions are true
  // Condition 1: x <= y → 2 <= 3 → true
  // Condition 2: a < y  → 0 < 3 → true
  // Result: true && true = true
  var z = x <= y && a < y;
  print('z = $z'); // Output: z = true

  // --- More examples ---

  // Logical OR (||): true if AT LEAST ONE condition is true
  // Condition 1: x > y → 2 > 3 → false
  // Condition 2: a == 0 → 0 == 0 → true
  // Result: false || true = true
  var orExample = x > y || a == 0;
  print('orExample = $orExample'); // true

  // Logical NOT (!): reverses the boolean value
  // x < y → 2 < 3 → true → !true = false
  var notExample = !(x < y);
  print('notExample = $notExample'); // false

  // Combining multiple logical operators
  // (x < y) && (y > a) || (a > 5)
  // (2 < 3 → true) && (3 > 0 → true) → true
  // true || (0 > 5 → false) → true
  var complexExample = (x < y) && (y > a) || (a > 5);
  print('complexExample = $complexExample'); // true

  // Comparison examples
  print('x == y: ${x == y}'); // false
  print('x != y: ${x != y}'); // true
  print('x >= y: ${x >= y}'); // false
  print('x <= y: ${x <= y}'); // true
}
