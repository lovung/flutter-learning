import 'contructors.dart';

main() {
  Employee e = Employee(
    dob: "28/10/1995",
    age: 25,
    empSalary: 1000000,
    empName: "Vu Long",
  );

  e.increaseAge(5);
  e.showEmpInfo();
}
