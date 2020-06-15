import 'dart:io';

void main() async {
  // prompt for user input
  // print("Enter your favourite color :");

  // // this is a synchronous method that waits to read user input
  // String color = stdin.readLineSync();

  // print("Your favourite color Is : $color");
  print("Start await...");
}

Future<int> printTick() async {
  var response = await Future.delayed(Duration(seconds: 5)); // Call API
  return Future.value(10);
}
