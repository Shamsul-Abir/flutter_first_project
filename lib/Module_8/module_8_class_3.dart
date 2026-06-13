//Grid View

import 'package:flutter/material.dart';

class Module8Clss3 extends StatelessWidget {
  const Module8Clss3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Grid View',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      // body: GridView.count(
      //   crossAxisCount: 3, //it means how many contents will stay in the row
      //   crossAxisSpacing:
      //       10, // cross axis spacing (---, in this area), according to pixel
      //   mainAxisSpacing:
      //       10, //main axis spacing ( |, in this area), according to pixel
      //   // children: [  //children can have multiple Containers
      //   //   Container(
      //   //     color: Colors.red,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.green,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.blue,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.purple,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   // ],
      //   children: List.generate(10, (index) {
      //     return Card(
      //       elevation: 10,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(15),
      //       ),
      //       color: Colors.red,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone_android, size: 60, color: Colors.white),
      //           SizedBox(height: 5),
      //           Text(
      //             'Cash Out',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   }),
      // ),

      //Alternative & effective way to generate cards in a grid view
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //it means how many contents will stay in the row
          crossAxisSpacing:
              10, // cross axis spacing (---, in this area), according to pixel
          mainAxisSpacing:
              8, // main axis spacing ( |, in this area), according to pixel
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10, //will put a shadow in each card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_android, size: 60, color: Colors.white),
                SizedBox(height: 5),
                Text(
                  'Cash Out', //index.toString() to view grid index serially by putting this code here and removing cash out
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
          //class time for progress "indicators and icons" - 44.00 Minutes
        },
      ),
    );
  }
}
