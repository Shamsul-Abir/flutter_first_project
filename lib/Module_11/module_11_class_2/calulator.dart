import 'package:first_flutter_project/Module_11/module_11_class_2/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class CalulatorApp extends StatefulWidget {
  const CalulatorApp({super.key});

  @override
  State<CalulatorApp> createState() => _CalulatorAppState();
}

class _CalulatorAppState extends State<CalulatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //app background color black
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Module 11 Class 2 - Calculator App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            calcualtor_button()
          ],
        ),
      ),
    );
  }
}


