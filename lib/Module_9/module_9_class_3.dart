import 'package:first_flutter_project/Module_8/module_8_class_1.dart';
import 'package:first_flutter_project/Module_9/module_9_class_2.dart';
import 'package:flutter/material.dart';

import '../Module_8/assignment.dart';
import '../Module_8/module_8_class_3.dart';
import '../Module_8/module_8_stack.dart';

class module9class3 extends StatelessWidget {
  const module9class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Class 3',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        //app bar color changed in app.dart => appbar theme
      ),

      //elevated button color style changed in app.dart before the
      //title of the app
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Travel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/module_9_class_1');
            },
            child: Text('module_9_class_1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lastClass');
            },
            child: Text('lastClass'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Module8Stack(),
                  transitionsBuilder:
                      (context, animation, secondaruAnimation, child) {
                        const begin = Offset(1.0, 0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                ),
              );
            },
            child: Text('Travel 2'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Module8Clss3()));
            },
            child: Text('Grid View'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> module8class1()));
            },
            child: Text('Class 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> module_9_class_2()));
            },
            child: Text('Class 2'),
          ),
          TextField(),
          Text('Class-3',style: Theme.of(context).textTheme.headlineLarge,)
        ],
      ),
    );
  }
}

//module 9 class 3 - 58.17 Minutes must be rechecked
