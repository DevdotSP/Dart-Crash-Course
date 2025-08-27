void main() {
  // 🔹 Define two numbers
  var x = 5;
  var y = 3;

  // 🔹 Define the operator to perform
  var op = '/';

  // 🔹 Switch statement: selects a block to execute based on 'op'
  switch (op) {
    case '+':
      print('x + y = ${x + y}'); // Addition
      break;
    case '-':
      print('x - y = ${x - y}'); // Subtraction
      break;
    case '*':
      print('x * y = ${x * y}'); // Multiplication
      break;
    case '/':
      print('x / y = ${x / y}'); // Division (returns double)
      break;
    case '%':
      print('x % y = ${x % y}'); // Modulus (remainder)
      break;
    default:
      print('No valid operator found'); // Default case if none matches
      break;
  }

  // 🔹 Additional examples
  op = '+';
  switch (op) {
    case '+':
    case '-':
    case '*':
      print('Arithmetic operation'); // Multiple cases combined
      break;
    default:
      print('Other operation');
  }

  // 🔹 Using switch with string values
  var day = 'Monday';
  switch (day) {
    case 'Monday':
      print('Start of the week');
      break;
    case 'Friday':
      print('End of the week');
      break;
    default:
      print('Midweek');
  }
}
