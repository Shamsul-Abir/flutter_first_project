import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold - provides a surface in the app to work
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('I Love You'),
        centerTitle: true,
      ),
      body: SingleChildScrollView( //this will add scroll bar for large data
        scrollDirection: Axis.horizontal, //to provide the text the correct direction for scroll
        //the scrollDirection is only given for row and horizontal direction view

        child: Row( //child can be anything like row/column
          mainAxisAlignment:
          MainAxisAlignment.center, //to align text in the end of line

          // "---- is cross axis alignment" and "|" - middle straight is main axis alignment
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
        'Text',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
        'Text',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),



          // Row(
          //   children: [
          //     Text(
          //       'Text',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.red,
          //       ),
          //     ),
          //     Text(
          //       'Text',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.green,
          //       ),
          //     ),
          //     Text(
          //       'Text',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.blue,
          //       ),
          //     ),
          //     Text(
          //       'Text',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.orange,
          //       ),
          //     ),
          //   ],
          // ),
        ],
       ),
      )
    );
  }
}
