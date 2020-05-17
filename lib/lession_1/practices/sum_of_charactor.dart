void main() {
  num x = sumOfCharactor(4123123); // x is inferred as an int
  print(x);
}

int sumOfCharactor(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}
