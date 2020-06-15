class Person {
  String name;
  int age;
  Person(String pName, int pAge) {
    this.name = pName;
    this.age = pAge;
  }

  Person.from(String str) {
    final nameAge = str.split("-");
    name = nameAge.first;
    age = int.parse(nameAge.last);
  }

  showPerInfo() {
    print("Person's Name Is : $name");
    print("Person's Age Is : $age");
  }
}
