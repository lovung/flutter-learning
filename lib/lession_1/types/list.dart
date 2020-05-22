void main(List<String> args) {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var constantList = const [1, 2, 3];
  print(constantList[1]);
  // constantList[1] = 1; // Uncommenting this causes an error.

  var list2 = [0, ...list];
  assert(list2.length == 4);
  print("List 2: $list2");

  var list3;
  var list4 = [0, ...?list3];
  assert(list4.length == 1);
  print("List 4: $list4");

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print("listOfStrings: $listOfStrings");
}
