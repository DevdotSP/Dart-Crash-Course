void main() {
  // 🔹 Call a function that prints the result directly (no return)
  fun1();

  // 🔹 Call a function that returns a value and print it
  print(fun2());

  // 🔹 Call a function with parameters that prints the sum
  fun3(3, 4);

  // 🔹 Call a function with parameters that returns the sum
  print(fun4(3, 4));

  // 🔹 Using optional parameters with default values
  print(fun5(10));       // uses default for y
  print(fun5(10, 5));    // uses provided value for y

  // 🔹 Using named parameters
  print(fun6(x: 2, y: 3));
  print(fun6(y: 5, x: 7));

  // 🔹 Arrow function for simple expressions
  print(fun7(4, 5));
}

// 🔹 Function with no parameters and no return value
void fun1() {
  print('fun1: ${3 + 4}');
}

// 🔹 Function with no parameters but returns a value
int fun2() {
  return 3 + 4;
}

// 🔹 Function with parameters and no return value
void fun3(int x, int y) {
  print('fun3: ${x + y}');
}

// 🔹 Function with parameters and returns a value
int fun4(int x, int y) {
  return x + y;
}

// 🔹 Function with optional positional parameter (default value)
int fun5(int x, [int y = 2]) {
  return x + y;
}

// 🔹 Function with named parameters
int fun6({required int x, required int y}) {
  return x + y;
}

// 🔹 Arrow function (short syntax)
int fun7(int x, int y) => x + y;
