void main() {
  var h1 = Human();
  h1.setAge(22);
  print(h1.getAge());
}

class Human {
  late num age = 0;

  void setAge(num age) {
    this.age = age;
  }

  num getAge() {
    return age;
  }
}
