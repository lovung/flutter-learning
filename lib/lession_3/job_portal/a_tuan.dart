// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         color Colors.grey[300],
//         child Column(children [
//           Container(
//              height 200,
//             margin EdgeInsets.fromLTRB(20, 10, 20, 10),
//             padding EdgeInsets.fromLTRB(20, 20, 20, 20),
//             decoration BoxDecoration(
//               color Colors.white,
//               borderRadius BorderRadius.all(Radius.circular(20)),
//             ),
//             child Row(children [
//                SizedBox(
//                  width 20,
//                ),
//               Container(
//                 child FirstColumn(
//                     'httpsdexibell.comappuploads201805facebook-logo-e1529401068347.png'),
//               ),
//               SizedBox(
//                 width 20,
//               ),
//               Container(
//                 child SecondColumn(),
//               ),
//             ]),
//           ),
//         ]),
//       ),
//     );
//   }
// }

// class CompanyLogo extends StatelessWidget {
//   final String x;
//   CompanyLogo(this.x);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height 60,
//       width 60,
//       child ClipRRect(
//         borderRadius BorderRadius.circular(15),
//         child Image.network(
//           this.x,
//           height 150.0,
//           width 100.0,
//         ),
//       ),
//     );
//   }
// }

// class FirstColumn extends StatelessWidget {
//   final String y;
//   FirstColumn(this.y);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        alignment Alignment.topLeft,
//       child Column(mainAxisAlignment MainAxisAlignment.center, children [
//         CompanyLogo(this.y),
//         SizedBox(
//           height 10,
//            width 10,
//         ),
//         Icon(
//           Icons.bookmark_border,
//           color Colors.blue,
//           size 40,
//         ),
//       ]),
//     );
//   }
// }

// class SecondColumn extends StatelessWidget {
//    final String jobName;
//    final String comName;
//    final String addWork;
//    final String postDate;
//    final String jobType;
//    final String salary;
//    final String status;

//    SecondColumn(this.jobName);
//    SecondColumn(this.comName);
//    SecondColumn(this.addWork);
//    SecondColumn(this.postDate);
//    SecondColumn(this.jobType);
//    SecondColumn(this.salary);
//    SecondColumn(this.status);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment Alignment.topLeft,
//       child Column(crossAxisAlignment CrossAxisAlignment.start, children [
//         Container(
//           child Text(
//             Computer Engineer,
//             style TextStyle(
//               fontSize 30,
//               color Colors.black,
//             ),
//           ),
//         ),
//         Container(
//           child Text(
//              Zalo-VNG,
//             style TextStyle(
//               fontSize 15,
//               color Colors.black,
//             ),
//           ),
//         ),
//         Row(children [
//           Icon(
//             Icons.add_location,
//             color Colors.grey[500],
//             size 15,
//           ),
//           Text(
//              Qu?n 7, TP H? ChÌ Minh,
//             style TextStyle(
//               fontSize 15,
//               color Color(0xFF999999),
//             ),
//           ),
//         ]),
//         Row(mainAxisAlignment MainAxisAlignment.spaceAround, children [
//           Column(crossAxisAlignment CrossAxisAlignment.start, children [
//             Container(
//               child Row(children [
//                 Icon(
//                   Icons.timer,
//                   color Colors.grey[500],
//                   size 15,
//                 ),
//                 Text(
//                    2 days ago,
//                   style TextStyle(
//                     fontSize 15,
//                     color Colors.grey[500],
//                   ),
//                 ),
//               ]),
//             ),
//             Container(
//               alignment Alignment.topRight,
//               child Row(children [
//                 Icon(
//                   Icons.apps,
//                   color Colors.grey[500],
//                   size 15,
//                 ),
//                 Text(
//                    Fulltime,
//                   style TextStyle(
//                     fontSize 15,
//                     color Colors.grey[500],
//                   ),
//                 ),
//               ]),
//             ),
//           ]),
//           Column(crossAxisAlignment CrossAxisAlignment.start, children [
//             Container(
//               child Row(children [
//                 Text(
//                   '''$2000-$3000''',
//                   style TextStyle(
//                     fontSize 15,
//                     color Color(0xFF00C48C),
//                   ),
//                 ),
//               ]),
//             ),
//             Container(
//               child Row(children [
//                 Text(
//                   APPLIED,
//                   style TextStyle(
//                     fontSize 15,
//                     color Color(0X8800C48C),
//                   ),
//                 ),
//               ]),
//             ),
//           ]),
//         ]),
//       ]),
//     );
//   }
// }
