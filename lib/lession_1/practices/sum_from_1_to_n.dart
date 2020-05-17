void main() {
  num x = sumFrom1ToN(100); // x is inferred as an int
  print(x);
}

int sumFrom1ToN(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}
