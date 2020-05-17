void main() {
  bool bool1 = true, bool2 = false;

  print("Dart Logical Operators");

  var res = bool1 && bool2;
  //Logical AND
  print("bool1 && bool2 = " + res.toString());

  res = bool1 || bool2;
  //Logical OR
  print("bool1 || bool2 = " + res.toString());

  res = !(bool1 && bool2);
  //Logical Not
  print("!(bool1 && bool2) = " + res.toString());
}
