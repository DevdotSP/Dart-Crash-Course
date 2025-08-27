void main() {
  // Create 2 Human objects with different values
  var h1 = Human();
  h1.setValues('Raphael', 29, 170);

  var h2 = Human();
  h2.setValues('Light', 25, 160);

  // Access the fields after setting values
  print("Accessing object fields directly:");
  print("h1 -> Name: ${h1.name}, Age: ${h1.age}, Height: ${h1.height}");
  print("h2 -> Name: ${h2.name}, Age: ${h2.age}, Height: ${h2.height}");

  // Demonstrating age manipulation
  h1.increaseAge(3); // add 3 years
  print("After increasing h1's age by 3: ${h1.age}");

  // Using getter and setter style
  h2.age = 30; // setter-like direct assignment
  print("After directly changing h2's age: ${h2.age}");
}

class Human {
  // Fields (instance variables)
  String? name;
  int? age;
  double? height;

  /// Method to assign values to the fields
  /// Note: we use `this.field` to avoid confusion between parameter and property
  void setValues(String name, int age, double height) {
    this.name = name;     // `this.name` refers to the class field
    this.age = age;       // left side = class field, right side = method parameter
    this.height = height; // assign parameter value to field

    // Print details
    print('--- Human Created ---');
    print('Name = $name');
    print('Age = $age');
    print('Height = $height');
    print('---------------------\n');
  }

  /// Example method to modify age
  void increaseAge(int years) {
    if (age != null) {
      age = age! + years;
    }
  }
}
