// Dart Example: Lexical Closures
// A closure is a function that "remembers" variables from the scope in which it was created,
// even after that scope has finished executing.

void main() {
  // ------------------------------
  // Example 1: Basic closure capturing a variable
  // ------------------------------
  Function fun(String str) {
    // This inner function has access to `message` (defined in outer scope)
    String message = str;

    // Inner function (closure)
    say(String msg) {
      message = msg; // update outer variable
      print("say(): $message");
    }

    return say; // return the closure
  }

  var sayFunction = fun('Hello'); // fun() returns a closure
  sayFunction('World');           // closure still has access to `message`


  // ------------------------------
  // Example 2: Counter using closure
  // ------------------------------
  Function makeCounter() {
    int count = 0; // outer variable

    // closure increments and returns `count`
    return () {
      count++;
      return count;
    };
  }

  var counter1 = makeCounter();
  print("Counter1: ${counter1()}"); // 1
  print("Counter1: ${counter1()}"); // 2
  print("Counter1: ${counter1()}"); // 3

  var counter2 = makeCounter();     // independent counter
  print("Counter2: ${counter2()}"); // 1


  // ------------------------------
  // Example 3: Accumulator
  // ------------------------------
  Function makeAdder(int base) {
    int sum = base;

    return (int value) {
      sum += value;
      return sum;
    };
  }

  var adder = makeAdder(10);
  print("Adder: ${adder(5)}");  // 15
  print("Adder: ${adder(10)}"); // 25


  // ------------------------------
  // Example 4: Closures capturing loop variables
  // ------------------------------
  List<Function> functions = [];

  for (int i = 0; i < 3; i++) {
    functions.add(() => print("Loop closure captured i = $i"));
  }

  // All functions will print "i = 3" because `i` is captured by reference
  functions.forEach((f) => f());

  // Fix: Capture value with local variable
  List<Function> fixedFunctions = [];

  for (int i = 0; i < 3; i++) {
    int captured = i; // new variable per loop iteration
    fixedFunctions.add(() => print("Fixed capture i = $captured"));
  }

  fixedFunctions.forEach((f) => f());
}
