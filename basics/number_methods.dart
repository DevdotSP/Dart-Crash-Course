void main() {
  var x = -4;

  // 🔹 Integer properties
  print('x = $x');
  print('x.isOdd = ${x.isOdd}');        // true if odd → false because -4 is even
  print('x.isEven = ${x.isEven}');      // true if even → true
  print('x.isFinite = ${x.isFinite}');  // true if number is not infinity → true
  print('x.isInfinite = ${x.isInfinite}'); // true if ±infinity → false
  print('x.isNaN = ${x.isNaN}');        // true if "Not a Number" → false
  print('x.isNegative = ${x.isNegative}'); // true if number < 0 → true
  print('x.abs() = ${x.abs()}');        // absolute value → 4

  var y = -8.5;

  // 🔹 Rounding methods (on doubles)
  print('\ny = $y');
  print('y.round() = ${y.round()}');       // rounds to nearest int → -9
  print('y.floor() = ${y.floor()}');       // largest int ≤ value → -9
  print('y.truncate() = ${y.truncate()}'); // chops decimals → -8
  print('y.ceil() = ${y.ceil()}');         // smallest int ≥ value → -8

  // 🔹 Remainder: similar to %, but can differ with negative numbers
  print('y.remainder(x) = ${y.remainder(x)}'); 
  // Example: -8.5 % -4 = -0.5 (keeps sign of numerator)

  // 🔹 Extra example: Infinity and NaN
  var z = 5 / 0; // results in Infinity
  print('\nz = $z');
  print('z.isInfinite = ${z.isInfinite}'); // true
  print('z.isFinite = ${z.isFinite}');     // false

  var nan = 0 / 0; // results in NaN
  print('nan = $nan');
  print('nan.isNaN = ${nan.isNaN}');       // true
}


/* 
Output:
x = -4
x.isOdd = false
x.isEven = true
x.isFinite = true
x.isInfinite = false
x.isNaN = false
x.isNegative = true
x.abs() = 4

y = -8.5
y.round() = -9
y.floor() = -9
y.truncate() = -8
y.ceil() = -8
y.remainder(x) = -0.5

z = Infinity
z.isInfinite = true
z.isFinite = false

nan = NaN
nan.isNaN = true



*/