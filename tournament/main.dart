// FizzBuzz (your version: Fizz for 5, Buzz for 3)
// ------------------------------------------------
// 1) Loop i from 1 to 101 (inclusive).
// 2) If i divisible by 15 (i.e., both 3 and 5) -> print "FizzBuzz".
// 3) Else if i divisible by 5 -> print "Fizz".
// 4) Else if i divisible by 3 -> print "Buzz".
// 5) Else print the number.
// `%` is the modulo operator: a % b == 0 means "a is divisible by b".

void main() {
  for (var i = 1; i <= 101; i++) {
    if (i % 15 == 0) {
      print('FizzBuzz');        // multiples of 3 and 5 (e.g., 15, 30, 45...)
    } else if (i % 5 == 0) {
      print('Fizz');            // your mapping: 5 -> Fizz
    } else if (i % 3 == 0) {
      print('Buzz');            // your mapping: 3 -> Buzz
    } else {
      print('$i');              // otherwise, just print the number
    }
  }
}
