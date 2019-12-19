import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/Component/ButtonGroup/ButtonGroup.dart';
import 'package:my_flutter/route/RouteConfig.dart';

class LayoutIntegration extends StatefulWidget {
  @override
  LayoutIntegrationState createState() => new LayoutIntegrationState();
}

class LayoutIntegrationState extends State<LayoutIntegration> {
  @override
  void LandscapePressed() {
    print(context);
    RouterConfig.router.navigateTo(context, RouterConfig.LANDSCAPE, transition: TransitionType.fadeIn);
  }

  @override
  void PortraitPressed() {
    print(context);
    RouterConfig.router.navigateTo(context, RouterConfig.PORTRAIT, transition: TransitionType.fadeIn);
  }

  @override
  void MixingPressed() {
    print(context);
    RouterConfig.router.navigateTo(context, RouterConfig.MIXING, transition: TransitionType.fadeIn);
  }

  @override
  Widget build(BuildContext context) { 
    return new ButtonGroup(buttonOption: [
      {"text": "横向布局", "pressed": LandscapePressed},
      {"text": "纵向布局", "pressed": PortraitPressed},
      {"text": "混合布局", "pressed": MixingPressed}
    ]);
  }
}
