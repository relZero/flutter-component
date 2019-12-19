import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/view/LayoutIntegration/Landscape.dart';
import 'package:my_flutter/view/LayoutIntegration/Portrait.dart';
import 'package:my_flutter/view/LayoutIntegration/Mixing.dart';

var landscapeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Landscape();
});

var portraitHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Portrait();
});

var mixingHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Mixing();
});
