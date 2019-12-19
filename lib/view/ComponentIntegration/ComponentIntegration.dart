import 'package:flutter/material.dart';
import 'package:my_flutter/Component/ButtonGroup/ButtonGroup.dart';

class ComponentIntegration extends StatefulWidget {
  @override
  ComponentIntegrationState createState() => new ComponentIntegrationState();
}

class ComponentIntegrationState extends State<ComponentIntegration> {
  @override
  void Pressed1() {
    print("777777");
  }

  @override
  void Pressed2() {
    print("888888");
  }

  @override
  void Pressed3() {
    print("999999");
  }

  @override
  Widget build(BuildContext context) {
    return new ButtonGroup(buttonOption: [
      {"text": "组件1", "pressed": Pressed1},
      {"text": "组件2", "pressed": Pressed2},
      {"text": "组件3", "pressed": Pressed3}
    ]);
  }
}
