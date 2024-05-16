void main() {
  // Filter Strings by Length:
  List<String> words = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
  List<String> filteredWords = words.where((word) => word.length > 5).toList();
  print(filteredWords); // Output: ['banana', 'orange']

  // Filter Strings by Specific Criteria:
  List<String> fruits = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
  List<String> filteredFruits =
      fruits.where((fruit) => fruit.contains('a')).toList();
  print(filteredFruits); // Output: ['apple', 'banana', 'grape']

  // Filter Objects by Property Value:
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 1000},
    {'name': 'Phone', 'price': 500},
    {'name': 'Tablet', 'price': 300}
  ];

  List<Map<String, dynamic>> affordableProducts =
      products.where((product) => product['price'] < 1000).toList();
  print(affordableProducts);
  // Output: [{'name': 'Phone', 'price': 500}, {'name': 'Tablet', 'price': 300}]

  // Filter Objects by Multiple Criteria:
  List<Map<String, dynamic>> users = [
    {'name': 'John', 'age': 30, 'isAdmin': true},
    {'name': 'Alice', 'age': 25, 'isAdmin': false},
    {'name': 'Bob', 'age': 35, 'isAdmin': true}
  ];

  List<Map<String, dynamic>> admins =
      users.where((user) => user['isAdmin']).toList();
  print(admins);
  // Output: [{'name': 'John', 'age': 30, 'isAdmin': true}, {'name': 'Bob', 'age': 35, 'isAdmin': true}]
}
