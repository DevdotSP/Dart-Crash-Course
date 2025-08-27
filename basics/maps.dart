void main() {
  // ✅ Creating Maps (Key-Value pairs)
  var x = {9: 'a', 8: 'b', 7: 'c'}; // Type inferred: Map<int, String>
  Map y = { // Explicit Map without generics (dynamic keys/values allowed)
    9: 'a',
    8: 'b',
    7: 'c',
  };

  // ✅ Iterating through Map using forEach
  x.forEach((key, value) {
    print('Map X -> key: $key, value: $value');
  });

  y.forEach((key, value) {
    print('Map Y -> key: $key, value: $value');
  });

  // ✅ Printing the whole map
  print("Full Map y: $y");

  // ✅ Accessing value by key
  print("x[9] = ${x[9]}");

  // ✅ Getting all keys
  print("Keys of x: ${x.keys}");

  // ✅ Getting all values
  print("Values of x: ${x.values}");

  // ✅ Getting all entries (key-value pairs as objects)
  print("Entries of x: ${x.entries}");

  // ✅ Adding new items to Map
  x.addAll({6: 'a', 5: 'c'});
  print("After addAll: $x");

  // ✅ Checking if key/value exists
  print("Contains key 6? ${x.containsKey(6)}");
  print("Contains value 'a'? ${x.containsValue('a')}");

  // ✅ Removing item by key
  x.remove(9);
  print("After removing key 9: $x");

  // ✅ Clearing the map
  x.clear();
  print("After clear(): $x");

  // 🔥 EXTRA EXAMPLES 🔥

  // Example: Creating a Map with String keys
  var person = {
    'name': 'Alice',
    'age': 25,
    'city': 'Manila'
  };

  print("\nPerson Map: $person");
  print("Name: ${person['name']}"); // Access by key
  person['age'] = 26; // Update value
  print("Updated Person Map: $person");

  // Example: Looping through map entries with for-in
  for (var entry in person.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }

  // Example: Default value if key not found
  print("Nickname: ${person['nickname'] ?? 'Not provided'}");
}
