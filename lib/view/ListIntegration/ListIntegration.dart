import 'package:flutter/material.dart';
import 'package:my_flutter/Component/ButtonGroup/ButtonGroup.dart';

class ListIntegration extends StatefulWidget {
  @override
  ListIntegrationState createState() => new ListIntegrationState();
}

class ListIntegrationState extends State<ListIntegration> {
  @override
  void Pressed1() {
    print("444444");
  }

  @override
  void Pressed2() {
    print("555555");
  }

  @override
  void Pressed3() {
    print("666666");
  }

  @override
  Widget build(BuildContext context) {
    return new ButtonGroup(
      buttonOption: [
        {"text": "列表1", "pressed": Pressed1},
        {"text": "列表2", "pressed": Pressed2},
        {"text": "列表3", "pressed": Pressed3}
      ]
    );
  }
}