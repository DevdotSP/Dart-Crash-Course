void main() {
  // Sort Array of Numbers in Ascending Order:
  List<int> numbersAsc = [5, 2, 8, 1, 4];
  numbersAsc.sort();
  print(numbersAsc); // Output: [1, 2, 4, 5, 8]

  // Sort Array of Numbers in Descending Order:
  List<int> numbersDesc = [5, 2, 8, 1, 4];
  numbersDesc.sort((a, b) => b.compareTo(a));
  print(numbersDesc); // Output: [8, 5, 4, 2, 1]

  // Find Minimum Value in an Array:
  List<int> minNumbers = [5, 2, 8, 1, 4];
  int minValue = minNumbers.reduce((a, b) => a < b ? a : b);
  print(minValue); // Output: 1

  // Find Maximum Value in an Array:
  List<int> maxNumbers = [5, 2, 8, 1, 4];
  int maxValue = maxNumbers.reduce((a, b) => a > b ? a : b);
  print(maxValue); // Output: 8
}
