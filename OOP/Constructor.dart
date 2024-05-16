void main() {
  var h1 = Human('Raphael', 29, 160);
  var h2 = Human('Light', 9, 150);
}

class Human {
  var name, age, height;

  Human(String name, int age, double height) {
    name = name;
    age = age;
    height = height;
    print('Name = ${name}');
    print('Age = ${age}');
    print('Length = ${height}');
    print('------------');
  }
}
