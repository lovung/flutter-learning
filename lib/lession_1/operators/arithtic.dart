void main() {
  var a = 20;
  var b = 7;
  print("Dart Arithmetic Operators");
  print("a+b = ${a + b}");
  print("a-b = ${a - b}");
  print("a/b = ${a / b}");
  print("a*b = ${a * b}");
  print("a%b = ${a % b}");
  print("a~/b = ${a ~/ b}");

  double d = a / b;
  print("${d.floor()}");
  print("${d.ceil()}");
}
