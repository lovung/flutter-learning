void main() {
  var res = 10 > 15 ? "Greater" : "Smaller";
  print(res);

  var n1;
  var n2 = "Chào buổi sáng";
  var res2 = n1 ?? n2;
  print(res2);

  var a = 0;
  var b = 1;
  // if (a > b) {
  //   a = 10;
  // } else {
  //   a = 20;
  // }

  a = a > b ? 10 : 20;
  print(a);

  var k2 = "Chào buổi sáng";
  var res4;
  res4 ??= k2; // res4 = res4 ?? k2;
  print(res4);
}
