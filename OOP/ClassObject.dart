void main() {
  var h1 = Human();
  h1.name = 'Raphael';
  h1.age = 22;
  h1.height = 170;

  print('Name: ${h1.name}');
  print('Age: ${h1.age}');
  print('Height: ${h1.height}');
  print('------------------');

  var h2 = Human();
  h2.name = 'Light';
  h2.age = 4;
  h2.height = 120;

  print('Name: ${h2.name}');
  print('Age: ${h2.age}');
  print('Height: ${h2.height}');
  print('------------------');
}

class Human {
  String? name;
  late int age;
  int? height;

  void fun() {
    age = age + 7;
    print('age = $age');
  }
}
