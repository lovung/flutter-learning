void main() {
  var num1 = 7;
  var num2 = 5;
  var num3 = 0;
  print("Dart Bitwise Operators");

  //Bitwise AND
  print("num1 & num2 = ${(num1 & num2)}");

  //Bitwise OR
  print("num1 | num2 = ${(num1 | num2)}");

  //Bitwise XOR
  print("num1 ^ num2 = ${(num1 ^ num2)}");

  //Binary Complement Operator
  print("~num1 = ${(~num1)}");

  //Binary Left Shift Operator
  num3 = num1 << 2;
  print("num1 << 2 = $num3");

  //Binary Right Shift Operator
  num3 = num1 >> 2;
  print("num1 >> 2  = $num3");
}
