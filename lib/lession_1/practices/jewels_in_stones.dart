// Input: Jewels = "aaabbb"
//        Stones = "AABBBBB"
// // Output: 5
main(List<String> args) {
  var jewels = "aaabbb";
  var stones = "AABBBBB";
  countFunction(jewels, stones.toLowerCase());
  print(jewels);
}

int countFunction(String a, String b, [String c = "default"]) {
  int count = 0;
  char.runes.map((e) {
    var nA = a.codeUnits.where((i) => i == e).toList().length;
    var nB = b.codeUnits.where((i) => i == e).toList().length;
    if (nA > nB) {
      count += nB;
    } else {
      count += nA;
    }
  });
  return count;
}

const String char = 'abcdefghijklmnopqrstuvwxyz';
