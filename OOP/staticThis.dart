void main() {
  var h1 = Human();
  h1.values('Raphael', 29, 170);
  var h2 = Human();
  h2.values('Light', 25, 160);
}

class Human {
  var name, age, height;

  void values(String p_name, int age, double height) {
    name = p_name;
    this.age = age;
    this.height = height;
    print('Name = $p_name');
    print('Age = $age');

    age = age + 5;
    print('New age = $age');
    print('Length = $height');
    print('------------');
  }
}
