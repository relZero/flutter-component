import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/route/RouterHandlers.dart';

class RouterConfig {
  static Router router;
  static const LANDSCAPE = '/landscape';
  static const PORTRAIT = '/portrait';
  static const MIXING = '/mixing';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(LANDSCAPE, handler: landscapeHandler);
    router.define(PORTRAIT, handler: portraitHandler);
    router.define(MIXING, handler: mixingHandler);
    RouterConfig.router = router;
  }
}
