main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var elements = <String>{};
  // Set<String> elements = {}; // This works, too.
  // var elements = {}; // Creates a map, not a set.
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
}
