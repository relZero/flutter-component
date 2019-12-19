import 'package:flutter/material.dart';

class Landscape extends StatefulWidget {
  @override
  LandscapeState createState() => new LandscapeState();
}

class LandscapeState extends State<Landscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('横向布局'),
      ),
      body: new Row(children: <Widget>[
        new Container(
          child: new Center(
            child: new Text("模块1"),
          )
        ),
        new Container(
          child: new Center(
            child: new Text("模块2"),
          )
        ),
        new Container(
          child: new Center(
            child: new Text("模块3"),
          )
        ),
      ],)
    );
  }
}
