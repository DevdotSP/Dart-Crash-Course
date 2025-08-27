void main() {
  // 🔹 Define two lists with dynamic types (numbers, strings, booleans)
  var a = [2, 2.3, 'Ali', true];
  var b = [5, 7.5, 'Sara', false];

  // 🔹 Pass lists to a function to print each element
  fun(a);
  fun(b);

  // 🔹 Example: List of integers only
  var numbers = [1, 2, 3, 4, 5];
  fun(numbers);

  // 🔹 Example: List of strings only
  var names = ['John', 'Jane', 'Mike'];
  fun(names);

  // 🔹 Example: Mixed list with dynamic content
  var mixed = [1, 'Hello', 3.14, false];
  fun(mixed);
}

// 🔹 Function that prints all values in a list
void fun(List<dynamic> list) {
  for (var i = 0; i < list.length; i++) {
    print('Value ${i + 1} = ${list[i]}');
  }
  print('-------------------');
}
