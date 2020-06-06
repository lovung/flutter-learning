class Employee {
  // Public feilds
  String empName;
  String dob;
  int empSalary;

  // Private feilds
  int _empAge;

  Employee({
    this.empName,
    this.dob,
    this.empSalary,
    int age,
  }) : _empAge = age;

  showEmpInfo() {
    print("Employee Name Is : $empName");
    print("Employee Age Is : $_empAge");
    print("Employee Salary Is : $empSalary");
  }

  increaseAge(int age) {
    print("Tuan");
    _empAge += age;
  }
}

// positional parameters
// optional parameters
// named optional parameters
