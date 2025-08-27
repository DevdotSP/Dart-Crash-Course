void main() {
  // 🔹 Call higher-order function with a regular function
  hof(2, 6, sum);

  // 🔹 Call higher-order function with an arrow function
  hof(5, 7, (x, y) => print('Arrow sum = ${x + y}'));

  // 🔹 Using a lambda to perform multiplication
  hof(3, 4, (x, y) => print('Product = ${x * y}'));

  // 🔹 Using a lambda that returns a value
  hofReturn(3, 4, (x, y) => x + y);
}

// 🔹 Normal function that prints sum
void sum(x, y) {
  print('sum = ${x + y}');
}

// 🔹 Arrow function assigned to variable
var a1 = (x, y) => print('sum = ${x + y}');

// 🔹 Higher-order function (takes a function as parameter)
void hof(int a, int b, Function operation) {
  // Call the function passed as argument
  operation(a, b);
}

// 🔹 Higher-order function returning a value
int hofReturn(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}
