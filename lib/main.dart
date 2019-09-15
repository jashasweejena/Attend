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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Box(),
            SizedBox(height: 20.0,),
            Box(),
            SizedBox(height: 20.0,),
            Box()
          ],
        ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  @override
  _BoxState createState() => _BoxState();

  var subject = "Subject";
  var subjectCode = "TEST-01";
  var leavesLeft = 0;
  var absent = 1;

  Box({this.subject, this.subjectCode, this.leavesLeft, this.absent});
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
        child: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(widget.subject,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                  Text(widget.subjectCode,
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10.0),)
                ],
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Center(
                    child: Text(widget.leavesLeft.toString(), style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),),
                  ),
                  Text("LEAVES LEFT",
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10.0),),
                ],
              ),
              SizedBox(width: 10.0,),
              Column(
                children: <Widget>[
                  Center(
                    child: Text(widget.absent.toString(), style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),),
                  ),
                  Text("ABSENT",
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10.0),),
                ],
              ),
            ],
          ),
        )

      ),
    );

  }
}
