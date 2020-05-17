void main() {
  num x = fibonacci(4); // x is inferred as an int
  print(x);
}

int fibonacci(int n) {
//   Recursion: NOT RECOMMEND
//   if (n == 1) {
//     return 1;
//   }
//   if (n == 2) {
//     return 2;
//   }
//   return fibonacci(n-1) + fibonacci(n-2);
  int a, b, out;
  a = 1;
  b = 2;
  for (int i = 3; i <= n; i++) {
    out = a + b;
    a = b;
    b = out;
  }
  return out;
}
