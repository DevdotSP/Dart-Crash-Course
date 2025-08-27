void main() {
  // 🔹 Calling the sum function with required arguments
  sum(3, 4); // Output: Sum = 7

  // 🔹 Calling sum with optional positional parameters
  sumOptional(5); // Output: Sum = 5 + 0 = 5 (default y = 0)
  sumOptional(5, 6); // Output: Sum = 11

  // 🔹 Calling sum with optional named parameters
  sumNamed(); // Output: Sum = 0 + 0 = 0 (defaults x=0, y=0)
  sumNamed(x: 3); // Output: Sum = 3 + 0 = 3
  sumNamed(y: 4); // Output: Sum = 0 + 4 = 4
  sumNamed(x: 3, y: 4); // Output: Sum = 7
}

// 🔹 Regular function with required parameters
void sum(int x, int y) {
  print('Sum = ${x + y}');
}

// 🔹 Function with optional positional parameters (use [] and provide default values)
void sumOptional([int x = 0, int y = 0]) {
  print('Sum = ${x + y}');
}

// 🔹 Function with optional named parameters (use {} and default values)
void sumNamed({int x = 0, int y = 0}) {
  print('Sum = ${x + y}');
}
