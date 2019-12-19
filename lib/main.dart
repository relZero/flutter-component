import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/view/Index/Index.dart';
import 'package:my_flutter/route/RouteConfig.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = new Router();
    RouterConfig.configureRoutes(router);
    return new MaterialApp(
        title: '网易新闻',
        home: new Index(),
        onGenerateRoute: RouterConfig.router.generator);
  }
}
