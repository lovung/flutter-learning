// Input: ["flower","flow","flight"]
// Output: "fl"
void main() {
  List<String> input = ["flower", "flow", "float", "flo"];
  String minStr = findShortestElement(input);
  int count = findLengthOfLongestCommonPrefix(input, minStr);
  print("Result: \n");
  print(minStr.substring(0, count));
}

int findLengthOfLongestCommonPrefix(List<String> input, String minStr) {
  int count = 0;
  for (int i = 1; i <= minStr.length; i++) {
    bool ok = true;
    void checkPrefix(String e) {
      final prefix = minStr.substring(0, i);
      if (!e.startsWith(prefix)) {
        ok = false;
      }
    }
    // Function checkPrefix2 = (String e) {
    //   final prefix = minStr.substring(0, i);
    //   if (!e.startsWith(prefix)) {
    //     ok = false;
    //   }
    // };

    input.forEach(checkPrefix);
    if (!ok) {
      break;
    }
    count = i;
  }
  return count;
}

String findShortestElement(List<String> list) {
  if (list.isEmpty) {
    return "";
  }
  String minStr = list.first;
  list.forEach((e) => minStr = (e.length < minStr.length) ? e : minStr);
  return minStr;
}
