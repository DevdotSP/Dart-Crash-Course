void main() {
  // Function to square a number using an anonymous arrow function
  int square(int x) => x * x;

  print(square(5)); // Output: 25

  // Map representing a user with properties
  var user = {
    'firstName': 'Raphael',
    'lastName': 'Africano',
    'age': 29,
  };

  // Extract properties with type annotations
  String firstName = user['firstName'] as String;
  String lastName = user['lastName'] as String;
  int age = user['age'] as int;

  print(firstName); // Output: Raphael
  print(lastName); // Output: Africano
  print(age); // Output: 29

  // Define a class representing a person with a greet method
  var person = Person(
    firstName: firstName,
    lastName: lastName,
    age: age,
  );

  print(person.firstName); // Output: Raphael
  print(person.age); // Output: 29
  print(person.greet()); // Call 'greet' method using parentheses to execute it
  // Output: Hello, my name is Raphael Africano.
}

// Define a class to represent a person with properties and methods
class Person {
  final String firstName;
  final String lastName;
  final int age;

  // Constructor for initializing the person object
  Person({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  // Method to greet the person
  String greet() {
    return 'Hello, my name is $firstName $lastName.';
  }
}
