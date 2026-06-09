//take an empty page in flutter

import 'package:first_flutter_project/flutter_class3.dart';
import 'package:first_flutter_project/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{ //the page doesn't get updated is statelessWidget
  //when a page gets updated is named as StatefullWidget

  MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is a Practice Project',
      home: FlutterClass3(), //home is connected from home.dart
      // home: Text('Hello World'), //home is connected from home.dart
    );
  }
}