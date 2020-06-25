// Input: List<Point> input
// Output: Count

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);
}

main(List<String> args) {
  List<Point> listPoint = [];
  double r;
  print(countInCirclePoints(listPoint, r));
}

int countInCirclePoints(List<Point> points, double r) => points
    .where((element) => element.x * element.x + element.y * element.y <= r * r)
    .length;
