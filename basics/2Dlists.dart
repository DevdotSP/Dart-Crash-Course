void main() {
  // A 2D list (list of lists) representing a matrix
  var a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  // --- Example 1: Accessing elements with index ---
  // This would print the 3rd element of each row (index 2).
  // for (var i = 0; i < a.length; i++) {
  //   print(a[i][2]);  // prints 3, 6, 9
  // }

  // --- Example 2: Nested for-in loops ---
  // Outer loop iterates through each row (a sub-list)
  for (var row in a) {
    // Inner loop iterates through each element inside the row
    for (var value in row) {
      print(value); // prints numbers 1 to 9 sequentially
    }
  }
}
