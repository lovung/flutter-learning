main() {
  int speed = 0; //3232943523452345329384234242323523;
  print(speed);
  int hitPoints = 21;
  print(hitPoints);
  double position = 32.43432;
  print(position);
  double hp = hitPoints.toDouble();
  print(hp);
  hitPoints <<= 63; // becomes a mint
  print(hitPoints);
  hitPoints <<= 20; // becomes a bigint
  print(hitPoints); // 99999999999999999999999999999999999999999

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.141591231232.toStringAsFixed(2);
  assert(piAsString == '3.14');

  const pi = 3.14;
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  const oneHour = 3600;
  const msOneHour = oneHour * msPerSecond;
  print(msUntilRetry);
  print(pi);
  print(msOneHour);
}
