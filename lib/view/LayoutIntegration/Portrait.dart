import 'package:flutter/material.dart';

class Portrait extends StatefulWidget {
  @override
  PortraitState createState() => new PortraitState();
}

class PortraitState extends State<Portrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('纵向布局'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
              child: new Center(
            child: new Text("模块1"),
          )),
          new Container(
              child: new Center(
            child: new Text("模块2"),
          )),
          new Container(
              child: new Center(
            child: new Text("模块3"),
          )),
        ],
      ),
    );
  }
}
