void main() {
  // Example 1: Using getter & setter to control access
  var h1 = Human();
  h1.setAge(22); 
  print("Human age: ${h1.getAge()}"); // ✅ Allowed
  
  // Example 2: Trying to set an invalid value
  h1.setAge(-5); // ❌ Invalid, age cannot be negative
  print("After invalid set: ${h1.getAge()}"); 

  // Example 3: Using property-style getter/setter (Dart sugar syntax)
  var car = Car();
  car.speed = 120; // Calls set speed (with validation)
  print("Car speed: ${car.speed}"); // Calls get speed
  car.speed = -10; // ❌ Invalid speed
  print("Car speed after invalid: ${car.speed}");

  // Example 4: Read-only getter
  var rect = Rectangle(5, 10);
  print("Rectangle area: ${rect.area}"); // only getter, no setter
}

/// Example 1: Classic getter/setter methods
/// Useful when you want to control or validate the data.
class Human {
  late num _age = 0; // 🔒 private field (convention: prefix with "_")

  void setAge(num age) {
    if (age >= 0) {
      _age = age;
    } else {
      print("❌ Age cannot be negative!");
    }
  }

  num getAge() {
    return _age;
  }
}

/// Example 2: Getter & Setter as Dart **properties**
/// Cleaner syntax instead of getX()/setX()
class Car {
  num _speed = 0;

  num get speed => _speed; // getter
  set speed(num value) {   // setter
    if (value >= 0) {
      _speed = value;
    } else {
      print("❌ Speed cannot be negative!");
    }
  }
}

/// Example 3: Read-only property
/// Sometimes you want users to "read" but not "write"
class Rectangle {
  num width;
  num height;

  Rectangle(this.width, this.height);

  num get area => width * height; // only getter, no setter
}
