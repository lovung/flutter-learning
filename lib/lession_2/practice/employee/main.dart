import 'employee.dart';
import 'person.dart';

main() {
  Person p = Person("John", 25);
  p.showPerInfo();
  Employee e = Employee("Keith", 30, 25000);
  e.showPerInfo();

  Employee e2 = Employee.from("Long-25", 100000);
  e2.showEmpInfo();
}
