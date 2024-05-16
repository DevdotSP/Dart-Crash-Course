void main() {
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);

  var sub = s1.listen((event) => print(event));

  sub.onData((event) => print(event));
  sub.onDone(() => print('Done!'));
  sub.onError((error) => print(error));
}
