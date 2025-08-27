// Dart Stream Example
// Streams are used to handle asynchronous sequences of data.
// Think of them like a "pipe" that sends values over time.

void main() {
  // Example 1: Basic Stream.periodic
  // ---------------------------------
  // This creates a stream that emits a new integer every 500 milliseconds.
  // The function `(a) => a` just returns the sequence number (0, 1, 2, ...).
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);

  // Subscribing to the stream:
  // `listen` starts receiving values from the stream.
  var sub = s1.listen(
    (event) => print("s1 emitted: $event"), // onData (default)
  );

  // You can override the handlers explicitly:
  sub.onData((event) => print("Handled with onData: $event"));
  sub.onDone(() => print('s1 is Done! (Stream closed)'));
  sub.onError((error) => print("Error: $error"));

  // Example 2: Stream from a list
  // ------------------------------
  // You can turn a list into a stream using `Stream.fromIterable`.
  final s2 = Stream.fromIterable([10, 20, 30, 40]);

  s2.listen(
    (event) => print("s2 emitted: $event"),
    onDone: () => print("s2 finished!"),
  );

  // Example 3: Single-value Stream
  // -------------------------------
  // Useful if you want a stream that emits only one value and completes.
  final s3 = Stream.value("Hello Stream!");
  s3.listen((event) => print("s3 emitted: $event"));

  // Example 4: Stream with error handling
  // -------------------------------------
  final s4 = Stream<int>.fromIterable([1, 2, 3, 0, 4, 5])
      .map((x) => 10 ~/ x); // This will throw when x == 0

  s4.listen(
    (event) => print("s4 emitted: $event"),
    onError: (err) => print("s4 error caught: $err"),
    onDone: () => print("s4 finished with error handling"),
  );

  // Example 5: Async* generator (custom Stream)
  // --------------------------------------------
  // Using `async*` you can yield values over time.
  customStream().listen((event) => print("customStream emitted: $event"));
}

// A custom stream generator using async* and yield
Stream<String> customStream() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Message $i";
  }
  yield "Stream finished!";
}
