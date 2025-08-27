import 'dart:async';

void main() {
  // Example 1: Future with a function that returns a value
  // `info()` will be executed immediately and wrapped in a Future
  final f1 = Future(info);
  f1.then((value) => print("f1 result = $value")) // prints result when done
    .catchError((e) => print("f1 error = $e"));  // handles any error

  // Example 2: Future.value
  // Creates an already completed Future with the given value
  final f2 = Future.value(2);
  f2.then((value) => print("f2 result = $value"));

  // Example 3: Future.delayed
  // Schedules a Future to complete after 2 seconds
  final f3 = Future.delayed(Duration(seconds: 2), () => "Hello after 2 sec");
  f3.then((value) => print("f3 result = $value"));

  // Example 4: Future.error
  // Immediately returns a failed Future
  final f4 = Future.error("Something went wrong!");
  f4.then((value) => print("f4 result = $value"))
    .catchError((e) => print("f4 error = $e"));

  // Example 5: Chaining Futures with .then()
  Future.value(10)
      .then((value) => value * 2) // transforms the value
      .then((value) => print("f5 result after chain = $value"))
      .catchError((e) => print("f5 error = $e"));

  // Example 6: Using async/await for cleaner syntax
  runAsyncExample();

  print("Main function finished setup (non-blocking)");
}

/// Function used in f1
double info() {
  return 2.0;
}

/// Example of using async/await instead of then/catchError
Future<void> runAsyncExample() async {
  try {
    print("Async/await example starting...");
    final result = await Future.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    print("Async/await result = $result");
  } catch (e) {
    print("Async/await error = $e");
  }
}
