// Example: Difference between final and const in Dart
// ---------------------------------------------------
// - `final`: value can only be set ONCE, but decided at runtime.
// - `const`: value must be known at COMPILE TIME (compile-time constant).

void main() {
  // ----------------------------
  // FINAL with Strings
  // ----------------------------
  final String a1 = 'a';
  final String a2 = 'a';

  // a1 = 'd'; // ❌ Error: cannot reassign a final variable
  // a2 = 'd'; // ❌ Error: same reason

  // ----------------------------
  // FINAL with runtime value
  // ----------------------------
  final int a = DateTime.now().year; 
  // ✅ Allowed: final can hold runtime values (decided when program runs)

  // ----------------------------
  // FINAL vs CONST with Lists
  // ----------------------------
  final List l1 = ['a', 'b', 'c']; 
  // ✅ final list reference cannot change (l1 = newList ❌)
  // BUT: the contents inside the list CAN be modified.
  l1.add('i'); // Allowed

  const List l2 = ['a', 'b', 'c'];
  // ✅ const list and its contents are deeply immutable.
  // l2.add('x'); // ❌ Error: cannot modify const list

  // ----------------------------
  // FINAL in Classes
  // ----------------------------
  var f = Final(5);
  // When creating Final, you must pass num1 because it's marked as `final`.

  // ----------------------------
  // PRINT OUTPUTS
  // ----------------------------
  print(l1);     // [a, b, c, i]
  print(f.num1); // 5
}

class Final {
  // final instance variable → must be initialized at object creation.
  final int num1;

  // const static variable → shared across all instances, immutable, known at compile-time.
  static const int num2 = 5;

  // Constructor requires num1 because it's `final`
  Final(this.num1);
}
