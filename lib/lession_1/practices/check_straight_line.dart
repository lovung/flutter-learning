class Point {
  final int x;
  final int y;

  Point(this.x, this.y);
}

void main(List<String> args) {
  List<Point> points = [
    Point(0, 0),
    Point(1, 1),
    Point(2, 2),
    Point(2, 3),
    Point(3, 4),
    Point(-1, -2),
    Point(2, 1),
  ];
  print(checkStraightLine(points));
}

bool checkStraightLine(List<Point> points) {
  // TODO: Code here
  bool checkValue;
  return checkValue;
}
