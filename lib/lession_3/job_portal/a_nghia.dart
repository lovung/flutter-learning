import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey[300],
          child: Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: FirstColumn(
                      'https://brasol.vn/public/ckeditor/uploads/tin-tuc/brasol.vn-logo-zalo-vector-logo-zalo-vector.png'),
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  flex: 5,
                  child: SecondColumn(
                    jobName: 'Computer Engineer',
                    companyName: 'Zalo - VNG',
                    workLocation: 'Quận 7 - TP.HCM',
                    postDate: '2 days ago',
                    jobType: 'Fulltime',
                    salary: '\$2000 - \$3000',
                    status: 'Applied',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

//SecondColumn
class SecondColumn extends StatelessWidget {
  final String jobName;
  final String companyName;
  final String workLocation;
  final String postDate;
  final String jobType;
  final String salary;
  final String status;

  SecondColumn({
    @required this.jobName,
    @required this.companyName,
    @required this.workLocation,
    @required this.postDate,
    @required this.jobType,
    @required this.salary,
    @required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            Text(
              jobName,
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              companyName,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(children: [
          Icon(
            Icons.add_location,
            color: Colors.grey[500],
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '$workLocation',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
            ),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.timer,
                        color: Colors.grey[500],
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        postDate,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500],
                        ),
                      ),
                    ]),
                    Row(children: [
                      Icon(
                        Icons.apps,
                        color: Colors.grey[500],
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        jobType,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500],
                        ),
                      ),
                    ]),
                  ]),
            ),
            Flexible(
              flex: 1,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(children: [
                      Text(
                        salary,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    child: Row(children: [
                      Text(
                        status,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

//FirstColumn
class FirstColumn extends StatelessWidget {
  final String y;
  FirstColumn(this.y);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CompanyLogo(y),
        SizedBox(height: 10),
        Icon(
          Icons.bookmark_border,
          color: Colors.blue,
          size: 40,
        ),
      ]),
    );
  }
}

//CompanyLogo
class CompanyLogo extends StatelessWidget {
  final String x;
  CompanyLogo(this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          this.x,
          height: 150.0,
          width: 100.0,
        ),
      ),
    );
  }
}
