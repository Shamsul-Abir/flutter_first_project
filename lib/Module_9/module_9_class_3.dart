import 'package:flutter/material.dart';

import '../Module_8/assignment.dart';

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
        backgroundColor: Colors.blue,
      ),

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
                      TravelHomeScreen(),
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
        ],
      ),
    );
  }
}

//module 9 class 3 - 37 Minutes must be rechecked
