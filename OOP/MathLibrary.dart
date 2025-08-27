import 'dart:math';

void main() {
  // 🔹 Trigonometric functions (all angles are in radians, so we convert degrees → radians using pi/180)
  print('sin(30°) = ${sin(30 * (pi / 180))}'); // 0.5
  print('cos(60°) = ${cos(60 * (pi / 180))}'); // 0.5
  print('tan(45°) = ${tan(45 * (pi / 180))}'); // 1.0

  // 🔹 Inverse trigonometric functions (results are in radians, convert back to degrees using *180/pi)
  print('asin(0.5) = ${asin(0.5) * (180 / pi)}°'); // 30°
  print('acos(0.5) = ${acos(0.5) * (180 / pi)}°'); // 60°
  print('atan(1) = ${atan(1) * (180 / pi)}°');     // 45°

  // 🔹 Exponential and logarithmic functions
  print('exp(2) = ${exp(2)}');   // e^2
  print('log(1) = ${log(1)}');   // Natural log (ln), ln(1) = 0
  print('log(10) = ${log(10)}'); // ln(10) ≈ 2.302
  print('pow(2,3) = ${pow(2, 3)}'); // 2³ = 8
  print('sqrt(9) = ${sqrt(9)}');    // Square root = 3

  // 🔹 Comparison helpers
  print('max(3, 6.7) = ${max(3, 6.7)}'); // Returns 6.7
  print('min(3, 6.7) = ${min(3, 6.7)}'); // Returns 3

  // 🔹 Absolute value & rounding functions
  print('abs(-42) = ${(-42).abs()}');   // 42
  print('floor(3.7) = ${3.7.floor()}'); // 3 (round down)
  print('ceil(3.2) = ${3.2.ceil()}');   // 4 (round up)
  print('round(3.5) = ${3.5.round()}'); // 4 (nearest int)

  // 🔹 Random number generation
  var random = Random();
  print('Random int (0–99): ${random.nextInt(100)}');
  print('Random double (0–1): ${random.nextDouble()}');
  print('Random bool: ${random.nextBool()}');

  // 🔹 Mathematical constants
  print('e = $e');           // Euler's number ≈ 2.718
  print('ln2 = $ln2');       // Natural log of 2
  print('ln10 = $ln10');     // Natural log of 10
  print('log10e = $log10e'); // log base 10 of e
  print('pi = $pi');         // π ≈ 3.14159
  print('sqrt1_2 = $sqrt1_2'); // sqrt(1/2)
  print('sqrt2 = $sqrt2');     // sqrt(2)
}
