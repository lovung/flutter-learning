import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Job Portal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey[500],
      body: Center(
        child: Column(
          children: <Widget>[
            JobCard(),
          ],
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            JobCardHead(),
            Container(width: 15, height: 50, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}

class JobCardHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CompanyLogo(
          'https://dexibell.com/app/uploads/2018/05/facebook-logo.png',
          size: 40,
          borderRadius: 15,
        ),
        SizedBox(height: 10),
        Icon(
          Icons.bookmark_border,
          size: 30,
          color: Color(0xFF4EAEFF),
        ),
      ],
    );
  }
}

class CompanyLogo extends StatelessWidget {
  final String url;
  final double size;
  final double borderRadius;

  CompanyLogo(
    this.url, {
    this.size = 60,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.network(url),
      ),
    );
  }
}
