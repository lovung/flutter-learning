class ZooAnimal {
  int posX;
  int posY;

  ZooAnimal(
    int x,
    int y,
  ) {
    assert(x >= 0 && x <= 7);
    assert(y >= 0 || y <= 7);
    posX = x;
    posY = y;
  }
}

main() {
  ZooAnimal a = ZooAnimal(0, 5);
  print(a.posX);
  print(a.posY);
}
