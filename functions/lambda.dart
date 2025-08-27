void main() {
  // 🔹 Example list
  var list = [3, 5, 6, 7];

  // 🔹 Using a lambda/arrow function to print each element
  // (element) => print(element) is a shorthand for a function
  list.forEach((element) => print('List element: $element'));

  // 🔹 Calling various lambda/arrow functions
  a();       // prints 3+4
  lam1();    // prints 3+4
  print('lam2 returns: ${lam2()}'); // prints return value 7
  lam3(3, 4);                        // prints 3+4
  print('lam4 returns: ${lam4(3,4)}'); // prints return value 7

  // 🔹 Calling normal functions for comparison
  fun1();
  print('fun2 returns: ${fun2()}');
  fun3(5, 6);
  print('fun4 returns: ${fun4(5,6)}');
}

// 🔹 Lambda assigned to a variable
// () => print(3 + 4) is an arrow function with no parameters
void Function() a = () => print('a = ${3 + 4}');

// 🔹 Lambda function with no parameters
void lam1() => print('lam1 = ${3 + 4}');

// 🔹 Lambda function returning a value
int lam2() => 3 + 4;

// 🔹 Lambda function with parameters
void lam3(x, y) => print('lam3 sum = ${x + y}');

// 🔹 Lambda function with parameters that returns a value
int lam4(x, y) => x + y;

// 🔹 Normal function examples for comparison
void fun1() {
  print('fun1 = ${3 + 4}');
}

int fun2() {
  return 3 + 4;
}

void fun3(x, y) {
  print('fun3 sum = ${x + y}');
}

int fun4(x, y) {
  return x + y;
}
