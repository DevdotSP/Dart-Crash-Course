// 🔹 Typedef can be used to define a function type for clarity
// typedef Operation = void Function(num a, num b);
// This allows you to specify that only functions with this signature can be passed

// 🔹 Higher-order function that takes two numbers and a function as parameters
void calc(num x, num y, Function operation) {
  // Call the function passed as an argument
  operation(x, y);
}

void main() {
  // Using calc with different operations
  calc(3, 4, sum); // Calls sum(3, 4)
  calc(10, 5, sub); // Calls sub(10, 5)
  calc(2, 7, mul); // Calls mul(2, 7)
  calc(20, 4, div); // Calls div(20, 4)
}

// 🔹 Function definitions for basic arithmetic operations
void sum(num a, num b) {
  print('$a + $b = ${a + b}');
}

void sub(num a, num b) {
  print('$a - $b = ${a - b}');
}

void mul(num a, num b) {
  print('$a * $b = ${a * b}');
}

void div(num a, num b) {
  if (b == 0) {
    print('Division by zero is not allowed');
  } else {
    print('$a / $b = ${a / b}');
  }
}
