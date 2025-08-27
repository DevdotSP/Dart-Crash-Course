// Example of using a constructor in Dart
// --------------------------------------
// A constructor lets you initialize object properties
// directly when creating a new instance.

void main() {
  // When creating Human objects, we pass values to the constructor
  var h1 = Human('Raphael', 29, 160);
  var h2 = Human('Light', 9, 150);
}

class Human {
  // Fields (properties) of Human
  String name;
  int age;
  double height;

  // Constructor
  // ----------------
  // The parameters in the constructor initialize the fields.
  // Use `this.fieldName` to distinguish between the field and the parameter.
  Human(this.name, this.age, this.height) {
    // Print details when object is created
    print('Name = $name');
    print('Age = $age');
    print('Height = $height');
    print('------------');
  }
}
