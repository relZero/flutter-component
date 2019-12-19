import 'package:flutter/material.dart';
import 'package:my_flutter/Component/ButtonGroup/ButtonGroup.dart';

class FeaturesIntegration extends StatefulWidget {
  @override
  FeaturesIntegrationState createState() => new FeaturesIntegrationState();
}

class FeaturesIntegrationState extends State<FeaturesIntegration> {
  @override
  void Pressed1() {
    print("101010101010");
  }

  @override
  void Pressed2() {
    print("111111111111");
  }

  @override
  void Pressed3() {
    print("121212121212");
  }

  @override
  Widget build(BuildContext context) {
    return new ButtonGroup(buttonOption: [
      {"text": "功能1", "pressed": Pressed1},
      {"text": "功能2", "pressed": Pressed2},
      {"text": "功能3", "pressed": Pressed3}
    ]);
  }
}
