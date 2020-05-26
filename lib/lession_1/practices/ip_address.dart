// Input: address = "192.168.1.1"
// Output: List<int>[192, 168, 1, 1]
void main() {
  String ipAddress = '192.168.1.1';
  print(ip2List(ipAddress));
}

List<int> ip2List(String ip) {
  final List<String> ipList = ip.split('.');
  print(ipList.join('.'));
  return ipList.map(int.parse).toList();
  // return ipList.map(int.parse).toList();

  // final List<String> ipList = ip.split('.');
  // List<int> out = [];
  // ipList.forEach((element) {
  //   final int eInt = int.parse(element);
  //   out.add(eInt);
  // });
  // return out;
}
