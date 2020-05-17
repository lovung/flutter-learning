void main() {
  int x = 10;
  print(x.toRadixString(2));
  print(reverse(x));
  print(reverse(x).toRadixString(2));
  print(reverse2(x));
  print(reverse2(x).toRadixString(2));
  assert(reverse(x) == reverse2(x));
}

int reverse(int n) {
  return (~n) & 255; //int.parse("11111111", radix: 2);
}

int reverse2(int n) {
  return n ^ 255; // int.parse("11111111", radix: 2);
}

int reverse3(int n) {
  return 255 - n; //int.parse("11111111", radix: 2);
}
