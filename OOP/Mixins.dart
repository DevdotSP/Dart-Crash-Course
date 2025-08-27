// Demonstrating MIXINS in Dart
// Mixins allow us to "reuse" methods across multiple classes
// without using traditional inheritance. It's like copying 
// methods into a class, but more structured and safer.

// ----------------------- Base Classes -----------------------
class A {
  void info() => print('Hi-1 from class A');
}

class B {
  void info2() => print('Hi-2 from class B');
}

class C {
  void info3() => print('Hi-3 from class C');
}

// ----------------------- Mixins -----------------------
// Mixins are like reusable pieces of code that can be 
// "mixed in" to other classes. 

// This mixin requires the target class to extend C (due to 'on C')
mixin InfoMixin on C {
  void info() => print('Hello-1 (from InfoMixin)');
}

mixin Info2Mixin on C {
  void info2() => print('Hello-2 (from Info2Mixin)');
}

// ----------------------- Using Mixins -----------------------
// Class D extends C and uses the mixins InfoMixin and Info2Mixin
class D extends C with InfoMixin, Info2Mixin {
  // info3 comes from class C, but we override it
  @override
  void info3() => print('Hello-3 (from class D)');
}

// ----------------------- Another Example -----------------------
// Mixins can be applied to multiple classes to reuse code.
// Let's define a mixin for logging.
mixin Logger {
  void log(String msg) => print('[LOG]: $msg');
}

// Example: User class uses Logger mixin
class User with Logger {
  String name;
  User(this.name);

  void greet() {
    log('User $name says hello!');
  }
}

// Example: Product class also uses Logger mixin
class Product with Logger {
  String productName;
  Product(this.productName);

  void showInfo() {
    log('Product: $productName');
  }
}

// ----------------------- Main -----------------------
void main() {
  // Example 1: Using inheritance + mixins
  var d = D();
  d.info();   // From InfoMixin
  d.info2();  // From Info2Mixin
  d.info3();  // Overridden in D

  print('---');

  // Example 2: Mixins reused in unrelated classes
  var user = User('Alice');
  user.greet(); // Uses Logger mixin

  var product = Product('Laptop');
  product.showInfo(); // Also uses Logger mixin
}
