//take an empty page in flutter

import 'package:first_flutter_project/Module_11/module_11_class_1/counter_app.dart';
import 'package:first_flutter_project/Module_8/list_view.dart';
import 'package:first_flutter_project/Module_8/module_8_class_3.dart';
import 'package:first_flutter_project/Module_9/module_9_class_1.dart';
import 'package:first_flutter_project/Module_9/module_9_class_2.dart';
import 'package:first_flutter_project/flutter_class3.dart';
import 'package:first_flutter_project/home.dart';
import 'package:first_flutter_project/module_12/money_management.dart';
import 'package:flutter/material.dart';

import 'Module_11/module_11_class_2/calculator.dart';
import 'Module_11/module_11_class_3/water_tracker.dart';
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
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor:  Colors.purple,
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          titleTextStyle: TextStyle(
            fontSize: 30,
          )
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7)
            )
          )
        ),

          textTheme: TextTheme(
          headlineLarge:  TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple
          )
      ),

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 1,
            )
          ),
          hintStyle: TextStyle(
            color: Colors.deepPurple,
          ),

          labelStyle: TextStyle(
            color: Colors.deepPurple
          )
        )
      ),

      title: 'This is a Practice Project',

      //while working on materials - this process hot reload will not gonna work
      //totally to have to run manually
      // initialRoute: '/module_9_class_3',
      initialRoute: '/money_management',
      routes: {
        '/home': (context) => FlutterClass3(),
        '/module_9_class_1': (context) => Alert(),
        '/lastClass': (context) => ownWidget(),
        '/module_9_class_3': (context) => module9class3(),
        '/module_9_class_2': (context) => module_9_class_2(),
        '/counter_app': (context) => CounterApp(),
        '/login_app': (context) => module8class1(),
        '/Calculator_App': (context) => CalculatorApp(),
        '/water_tracker': (context) => WaterTracker(),
        '/money_management': (context) => MoneyManagement(),
      },
      //this will go to TravelHomeScreen page by using '/' this sign

      // home: module9class3(),
      //home is connected from home.dart
      // home: Text('Hello World'), //home is connected from home.dart
    );
  }
}
