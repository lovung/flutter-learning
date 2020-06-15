class ZooAnimal {
// positionX, positionY ranges from [0,7]
// direction: 0, 90, 180, 270

  int positionX;
  int positionY;
  int direction;

  ZooAnimal({
    this.positionX,
    this.positionY,
    this.direction,
  });

// k: [0,1], [1,0], [0,-1], [-1,0]
  move(List<int> k) {
    if (positionX == 7) {
      positionX = 7;
    } else if (positionX == 0) {
      positionX = 0;
    } else {
      positionX = positionX + k[0];
    }

    if (positionY == 7) {
      positionY = 7;
    } else if (positionY == 0) {
      positionY = 0;
    } else {
      positionY = positionY + k[1];
    }
  }

// i: 90, -90
  rotate(int i) {
    direction = direction + i;
    switch (direction) {
      case -90:
        {
          direction = 270;
          break;
        }
      case 360:
        {
          direction = 0;
          break;
        }
    }
  }
}

main() {
  ZooAnimal e = ZooAnimal(
    positionX: 7,
    positionY: 7,
    direction: 270,
  );

  List<int> movePosition = [0, 1];
  int changeDirection = 90;

  print('TEST FUNCTION MOVE');
  e.move(movePosition);
  print('Tọa độ X mới của e là: ${e.positionX}');
  print('Tọa độ Y mới của e là: ${e.positionY}');
  print('Hướng mới của e là: ${e.direction}');

  print('TEST FUNCTION ROTATE');
  e.rotate(changeDirection);
  print('Tọa độ X mới của e là: ${e.positionX}');
  print('Tọa độ Y mới của e là: ${e.positionY}');
  print('Hướng mới của e là: ${e.direction}');
}
