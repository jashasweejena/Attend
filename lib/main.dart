import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Box box = Box(
    subject: "Subject", subjectCode: "SubjectCode", absent: 0, leavesLeft: 0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: <Widget>[
            GradientAppBar("Attendance"),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  box,
                  box,
                  box
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();

  var subject;
  var subjectCode;
  var leavesLeft;
  var absent;


  Box({this.subject, this.subjectCode, this.leavesLeft, this.absent});
}

class _BoxState extends State<Box> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),),
          child: Container(
            height: 90.0,
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(widget.subject,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),),
                    Text(widget.subjectCode,
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 10.0),)
                  ],
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Center(
                      child: Text(widget.leavesLeft.toString(),
                        style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),),
                    ),
                    Text("LEAVES LEFT",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 10.0),),
                  ],
                ),
                SizedBox(width: 10.0,),
                Column(
                  children: <Widget>[
                    Center(
                      child: Text(widget.absent.toString(),
                        style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),),
                    ),
                    Text("ABSENT",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 10.0),),
                  ],
                ),
              ],
            ),
          )

      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 50.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      height: statusbarHeight + barHeight,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: new Center(
        child: new Text(
          title,
          style: new TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [Colors.deepOrange, Colors.pink],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
