import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        // height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Flexible(flex: 1, child: JobCardHead()),
            Container(width: 15, height: 50),
            Flexible(flex: 4, child: JobCardTail()),
          ],
        ),
      ),
    );
  }
}

class JobCardTail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 5),
          child: Text(
            '''Software Enginner''',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 3),
          child: Text(
            '''Zalo - VNG''',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        IconInfo(
          iconData: Icons.pin_drop,
          description: '''Quận 7, TP. Hồ Chí Minh, Việt Nam''',
          color: Color(0xFF999999),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconInfo(
                  iconData: Icons.timer,
                  description: '''2 days ago''',
                  color: Colors.grey[700],
                ),
                IconInfo(
                  iconData: Icons.layers,
                  description: '''Fulltime''',
                  color: Colors.grey[700],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconInfo(
                  description: '''\$2000 - \$3000''',
                  color: Color(0xFF00C48C),
                ),
                IconInfo(
                  iconData: Icons.check,
                  description: '''APPLIED''',
                  color: Color(0x8800C48C),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class IconInfo extends StatelessWidget {
  final IconData iconData;
  final String description;
  final Color color;

  IconInfo({
    this.iconData,
    @required this.description,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: iconData != null,
          child: Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Icon(
              iconData,
              size: 20,
              color: color,
            ),
          ),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: color,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
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
          size: 60,
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
