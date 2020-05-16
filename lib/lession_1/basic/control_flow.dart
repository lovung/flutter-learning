// This is a normal, one-line comment.

/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.

/* Comments like these are also supported. */

// Importing core libraries
// import 'dart:math';

// Importing libraries from external packages
// import 'package:test/test.dart';

// Importing files
// import 'path/to/my_other_file.dart';

void main() {
  // var name = 'Voyager I';
  var year = 1977;
  // var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  // var image = {
  //   'tags': ['saturn'],
  //   'url': '//path/to/saturn.jpg'
  // };

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
