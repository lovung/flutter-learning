import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.black,
                child: Text(
                  "Text 1awd asd a",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.yellow,
              ),
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.red,
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
