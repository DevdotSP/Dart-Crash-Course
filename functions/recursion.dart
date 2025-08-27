void main() {
  // 🔹 Call recursive function with n = 3
  var x = fun(3);
  print('Result = $x'); // Output: 6 (3 + 2 + 1)
}

// 🔹 Recursive function to calculate sum from n down to 0
int fun(int n) {
  if (n != 0) {
    // Base case not reached, call function recursively with n-1
    // Example: fun(3) => 3 + fun(2) => 3 + 2 + fun(1) => 3 + 2 + 1 + fun(0)
    return n + fun(n - 1);
  } else {
    // Base case reached: stop recursion
    return 0;
  }
}
