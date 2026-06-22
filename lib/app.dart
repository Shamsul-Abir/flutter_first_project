//take an empty page in flutter

import 'package:first_flutter_project/Module_8/list_view.dart';
import 'package:first_flutter_project/Module_8/module_8_class_3.dart';
import 'package:first_flutter_project/Module_9/module_9_class_1.dart';
import 'package:first_flutter_project/Module_9/module_9_class_2.dart';
import 'package:first_flutter_project/flutter_class3.dart';
import 'package:first_flutter_project/home.dart';
import 'package:flutter/material.dart';

import 'Module_8/assignment.dart';
import 'Module_8/module_8_class_1.dart';
import 'Module_8/module_8_class_2.dart';
import 'Module_8/module_8_stack.dart';
import 'Module_9/module_9_class_3.dart';
import 'Module_9/widgets/own_widget.dart';

class MyApp extends StatelessWidget {
  //the page doesn't get updated is statelessWidget
  //when a page gets updated is named as StatefullWidget

  MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is a Practice Project',

      //while working on materials - this process hot reload will not gonna work
      //totally to have to run manually
      initialRoute: '/module_9_class_3',
      routes: {
        '/': (context) => FlutterClass3(),
        '/module_9_class_1': (context) => Alert(),
        '/lastClass': (context) => ownWidget(),
        '/module_9_class_3': (context) => module9class3(),
      },
      //this will go to TravelHomeScreen page by using '/' this sign

      // home: module_9_class_3(),
      //home is connected from home.dart
      // home: Text('Hello World'), //home is connected from home.dart
    );
  }
}
