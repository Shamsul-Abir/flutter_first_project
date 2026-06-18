//Alert Pop-Up

import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {

    //screen size adjust according to device
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialogue() {
      showDialog(
        context: context,
        barrierDismissible: false, //this wont allow the dialogue box
        // ^ to close while touching anywhere else  (only regarding use case)
        builder: (context) => AlertDialog(
          title: Text('This is a title'),
          content: Text('Are you sure?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); //to go back in the back page
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //changing button background color
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text('Submit', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );
    }

    void showAlertDialogueWithIcon() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Installation Block',
          ), //,textAlign: TextAlign.center, to put it in the center
          content: Column(
            mainAxisSize: MainAxisSize.min, //this will take the requires space
            //for alert box
            children: [
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.red, size: 40),
                  SizedBox(width: 5),
                  Text('Warning'),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Some people say that the only reason for foreign languages is in order to travel to or work in a foreign country. Others say that these are not only reasons why someone should learn a foreign language.',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ok'),
            ),
          ],
        ),
      );
    }

    void showSimpleDialogue() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('Simple Dialogue'),
          children: [
            SimpleDialogOption(child: Text('Sim-1')),
            SimpleDialogOption(child: Text('Sim-2')),
            SimpleDialogOption(child: TextField()),
          ],
        ),
      );
    }

    void showBottomSheetAlert() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Choose Option', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              ListTile(title: Text('Option - 1'),
                onTap: (){},
                onLongPress: (){},
              ),

              ListTile(title: Text('Option - 2'),
                onTap: (){},
                onLongPress: (){},
              ),

              ListTile(title: Text('Option - 3'),
                onTap: (){},
                onLongPress: (){},
              ),

              ListTile(title: Text('Option - 4'),
                onTap: (){},
                onLongPress: (){},
              ),

              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.pop(context);  //after saving the page will pop
                  },
                  child: Text('Save', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Alert',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //media query test
            Container(
              color: Colors.purple,
              width: 200,
              height: 200,
            ),

            SizedBox(height: 10,),

            Container(
              color: Colors.red,
              width: screenSize.width*0.5,
              height: screenSize.height*0.3,
            ),
            Text('This is a text',
              style: TextStyle(
                fontSize: screenSize.width > 600 ? 32 : 18
              ),),
            //media query test

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //changing button background color
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showAlertDialogue();
              },
              child: Text(
                'Alert Dialogue',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //changing button background color
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showAlertDialogueWithIcon();
              },
              child: Text(
                'Alert Dialogue with Icon',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //changing button background color
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showSimpleDialogue();
              },
              child: Text(
                'Simple Dialogue',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //changing button background color
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showBottomSheetAlert();
              },
              child: Text(
                'Bottom Sheet',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
