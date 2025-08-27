void main() {
  // Create a list with some integers
  var list1 = [4, 5, 6, 7, 8, 9];
  print(list1);        // [4, 5, 6, 7, 8, 9]

  // Access elements by index
  print(list1[0]);     // 4 (first element, index starts at 0)
  print(list1[3]);     // 7 (4th element)

  // Shortcut properties
  print(list1.first);    // 4 (first element)
  print(list1.last);     // 9 (last element)
  print(list1.reversed); // (9, 8, 7, 6, 5, 4) (iterable, not a List)

  // Replace value at specific index
  list1[1] = 1;  
  print(list1);        // [4, 1, 6, 7, 8, 9]

  // Add single element to the end
  list1.add(10);
  print(list1);        // [4, 1, 6, 7, 8, 9, 10]

  // Add multiple elements at the end
  list1.addAll([3, 7, 8]);
  print(list1);        // [4, 1, 6, 7, 8, 9, 10, 3, 7, 8]

  // Insert single element at specific position
  list1.insert(0, 8);  
  print(list1);        // [8, 4, 1, 6, 7, 8, 9, 10, 3, 7, 8]

  // Insert multiple elements at specific position
  list1.insertAll(0, [3, 7, 8]);
  print(list1);        // [3, 7, 8, 8, 4, 1, 6, 7, 8, 9, 10, 3, 7, 8]

  // Remove element by value (removes the FIRST match)
  list1.remove(9);
  print(list1);        // [3, 7, 8, 8, 4, 1, 6, 7, 8, 10, 3, 7, 8]

  // Remove element by index
  list1.removeAt(0);
  print(list1);        // [7, 8, 8, 4, 1, 6, 7, 8, 10, 3, 7, 8]

  // Remove last element
  list1.removeLast();
  print(list1);        // [7, 8, 8, 4, 1, 6, 7, 8, 10, 3, 7]

  // Remove a range of elements (from index 0 to 4, excluding 5)
  list1.removeRange(0, 5);
  print(list1);        // [6, 7, 8, 10, 3, 7]

  // Replace elements in a range with new values
  list1.replaceRange(0, 6, [2, 2]); 
  print(list1);        // [2, 2]
}
