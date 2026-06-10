//alt + Enter to wrap something

import 'package:flutter/material.dart';

class FlutterClass3 extends StatelessWidget {
  //type 'stless' to add all classes easily
  const FlutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,     <---Alternative way
      // backgroundColor: Colors.grey.withOpacity(0.9),    <---Alternative way
      backgroundColor: Colors.grey.shade300,  //here, shade works as a opacity

      appBar: AppBar(
        backgroundColor: Colors.orange, // <-- Add this line (to change the appbar color)
          //can also add shade(opacity) ^ over here
        title: Text('Class 3'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
      ),

      body: Center(  //alt + Enter to wrap something
        child: Column(
          //column takes multiple child in the Children
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
                onPressed: (){
              // print('Clicked'); this will show clicked in the terminal output
            }, child: Text('Submit')),

            SizedBox(
              height: 10,  //to take space between the buttons
            ),

            SizedBox(
              //to put ElevatedButton in the size box to resize buttons
              height: 50,
              // width: 150,
              width: double.infinity, //this will take the entire screen space, in any device
              child: ElevatedButton(
              
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                  onPressed: (){
                // print('Clicked'); this will show clicked in the terminal output
              }, child: Text('Submit')),
            ),

            SizedBox(
              height: 10,  //to take space between the buttons
            ),

            //another button
            OutlinedButton(onPressed: (){}, child: Text('Outline Button')),

            //text button
            TextButton(onPressed: (){}, child: Text('Text Button',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)),

            //icon - phone button
            Icon(Icons.phone_android,
            size: 50,
              color: Colors.red,
            ),

            //delete icon button
            IconButton(onPressed: (){
              print('Deleted');
            }, icon: Icon(Icons.delete,color: Colors.pinkAccent,size: 50)),


            // GestureDetector() & Inkwell - creates custom text button/widget clickable
            //payment method long/on tap press demo
            GestureDetector(
              onTap: (){
                print('Taped on test');
              },
              child: Text('You are watching Prime Course',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
            ),

            InkWell(
              onTap: (){
                print('On taped inkwell');
              },
              child: Text('This is test text 2 ',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
            ),

            Padding(
              //to maintain padding this widget we have to use
              // padding: EdgeInsets.all(50), //this is auto method for padding
              // padding: EdgeInsets.only(left: 8,right: 5,bottom: 8), //this is manual method for padding
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50), //this x-axis and y-axis padding method
              child: Text('This is padding',style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              )),
            ),

            //17 minutes 41 seconds in the ostad class video while practicing
          ],
        ),
      ),
    );

  }
}
