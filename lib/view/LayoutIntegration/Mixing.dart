import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mixing extends StatefulWidget {
  @override
  MixingState createState() => new MixingState();
}

class MixingState extends State<Mixing> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    final Map mixingStyle = {
      "boxWidth": ScreenUtil().setWidth(230),
      "boxHeight": ScreenUtil().setWidth(200),
      "boxFontSize": ScreenUtil().setHeight(28),
      "boxMargin": ScreenUtil().setWidth(10)
    };
    return Scaffold(
        appBar: AppBar(
          title: Text('混合布局'),
        ),
        body: new Row(
          children: <Widget>[
            new Column(children: <Widget>[
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块1-1",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块1-2",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块1-3",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  ))
            ]),
            new Column(children: <Widget>[
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块2-1",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块2-2",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块2-3",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  ))
            ]),
            new Column(children: <Widget>[
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块3-1",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块3-2",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  )),
              new Container(
                  width: mixingStyle["boxWidth"],
                  height: mixingStyle["boxHeight"],
                  color: new Color(0xFFff5555),
                  margin: new EdgeInsets.all(mixingStyle["boxMargin"]),
                  child: new Center(
                    child: new Text("模块3-3",
                        style: new TextStyle(
                            color: new Color(0xFFffffff),
                            fontSize: mixingStyle["boxFontSize"])),
                  ))
            ]),
          ],
        ));
  }
}
