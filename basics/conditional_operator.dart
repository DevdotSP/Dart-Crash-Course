void main() {
  var a = 4;
  var b = 3;

  // ---------- Normal if-else ----------
  if (a < b) {
    print('$a is smaller');
  } else {
    print('$b is smaller');
  }

  // ---------- Using ternary operator (short if-else) ----------
  // (condition) ? (value if true) : (value if false)
  a < b ? print('$a is smaller') : print('$b is smaller');

  // Store result of ternary in a variable
  var smallerNum = a < b ? a : b;
  print('Smaller number is $smallerNum');

  // ---------- Null-coalescing operator (??) ----------
  // If variable is null, use the default value
  var name; // null by default
  var v1 = name ?? "Raphael";
  print(v1); // prints "Raphael"

  // Another example with ?? operator
  String? nickname;
  var displayName = nickname ?? "Guest";
  print('Hello, $displayName');

  // ---------- Extra examples ----------
  var age = 18;
  // Use ternary to check eligibility
  var eligibility = age >= 18 ? "Adult" : "Minor";
  print('Age $age means you are an $eligibility');

  // Nested ternary example (use carefully for readability)
  var score = 85;
  var grade = score >= 90
      ? "A"
      : score >= 80
          ? "B"
          : score >= 70
              ? "C"
              : "D";
  print('Score $score gives grade $grade');

  // Null-aware assignment (??=)
  // Assigns a value only if the variable is currently null
  String? country;
  country ??= "Philippines";
  print('Country = $country');
}
