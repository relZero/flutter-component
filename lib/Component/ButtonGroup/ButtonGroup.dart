import 'package:flutter/material.dart';

class ButtonGroup extends StatefulWidget {
  @override
  const ButtonGroup({
    Key key,
    this.buttonOption,
    this.child,
  }) : super(key: key);

  final List buttonOption;
  final Widget child;

  ButtonGroupState createState() => new ButtonGroupState();
}

class ButtonGroupState extends State<ButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: ListView.builder(
            itemCount: widget.buttonOption.length,
            itemBuilder: (context, index) {
              final Map option = widget.buttonOption[index];
              return new Container(
                  child: new Padding(
                      padding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: new RaisedButton(
                          color: Color(0xFF0099ff),
                          onPressed: option["pressed"],
                          child: new Padding(
                            padding: new EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                            child: Text(option["text"],
                                style: TextStyle(
                                    color: Color(0xFFffffff), fontSize: 20.0)),
                          ))));
            }));
  }
}
