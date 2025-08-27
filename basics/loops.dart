void main() {
  // Example 1: while loop
  // A while loop runs as long as the condition is TRUE.
  // Here it will print numbers 0–10 with "Hi".
  var i = 0;
  while (i < 11) {
    print('$i - Hi (while loop)');
    i++;
  }

  // Example 2: do-while loop
  // A do-while loop executes AT LEAST ONCE even if the condition is FALSE.
  // Here, i = 12, so condition (i < 11) is false, but body runs once.
  var j = 12;
  do {
    print('$j - Hi (do-while loop)');
    j++;
  } while (j < 11);

  // Example 3: for loop
  // A for loop is used when we know exactly how many times to repeat.
  // Prints numbers 0–11 with "HI".
  for (var k = 0; k < 12; k++) {
    print('$k - HI (for loop)');
  }

  // Example 4: infinite while loop (⚠️ careful)
  // Uncomment to test. Runs forever until manually stopped.
  // while (true) {
  //   print('Hello (infinite loop)');
  // }
}
