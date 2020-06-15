import 'person.dart';

class Employee extends Person {
  int empSalary;
  Employee(String eName, int eAge, int eSalary) : super(eName, eAge) {
    this.empSalary = eSalary;
  }
  showEmpInfo() {
    print("Employee Name Is : $name");
    print("Employee Age Is : $age");
    print("Employee Salary Is : $empSalary");
  }

  Employee.from(String str, int eSalary) : super.from(str) {
    this.empSalary = eSalary;
  }
}
