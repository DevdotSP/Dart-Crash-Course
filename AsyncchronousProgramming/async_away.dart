import 'package:test/test.dart';

void main() async {
  // =========================
  // Example 1: Future with then() and catchError()
  // =========================
  // Future.delayed simulates an async task (e.g., network call) that takes 1 second.
  // After 1 second, it returns the value `2`.
  await Future.delayed(Duration(seconds: 1), () => 2)
      // "then" executes when the Future completes successfully
      .then((value) => print('value = $value'))
      // "catchError" executes if the Future throws an error
      .catchError((e) => print('error = $e'));

  // This runs AFTER the above await finishes.
  print('value = 1');

  // =========================
  // Example 2: Using async/await + try/catch
  // =========================
  try {
    // Same as above, but written using async/await style instead of then()
    final value = await Future.delayed(Duration(seconds: 1), () => 2);
    print(value); // prints "2"
  } catch (e) {
    // Handles errors if the Future throws an exception
    print(e);
  }
  print('1');

  // =========================
  // Example 3: Streams
  // =========================
  // Stream.periodic generates a new value every 500 milliseconds.
  // It produces an increasing integer sequence: 0, 1, 2, 3, ...
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);

  // ---- Manual subscription way (commented out here) ----
  // final sub = s1.listen((_) => _); 
  // sub.onData((data) {
  //   // Cancel subscription when data > 10
  //   if (data > 10) {
  //     sub.cancel();
  //   } else {
  //     print(data);
  //   }
  // });

  // ---- Easier: await for loop ----
  // This listens to the Stream until we break it.
  await for (var data in s1) {
    if (data > 10) break; // Stop after data > 10
    print(data);          // Print the stream values: 0, 1, 2, ..., 10
  }
}
