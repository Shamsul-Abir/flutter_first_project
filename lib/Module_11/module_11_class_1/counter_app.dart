//count App

//Life Cycle

import 'package:flutter/material.dart';

import '../../Module_9/module_9_class_3.dart';

class CounterApp extends StatefulWidget{  //converting stless to stfull "alt+enter"
  CounterApp({super.key}){
    print('1 Constructor');
  }

  @override
  State<CounterApp> createState() {
    print('2 Create State');
    return _CounterAppState();
  }
}

class _CounterAppState extends State<CounterApp> {
  int number = 0;
 //after adding this we removed text from Column text and added method number.toString()
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 Init State');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('4 Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('5 Dispose'); //this method will do anything automatically by its command
    //it can be also used to logout automatically
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Module 11 Class 1 - Count App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number--;
                    print(number);
                  });
                },
                child: Text('-', style: TextStyle(fontSize: 37)),
              ),
              // Spacer(),  //this will take as much space as possible betweem 2 buttons
              ElevatedButton(
                onPressed: () {
                  setState(() {  //by using this method this will automatically refresh & change device state
                    number++;
                    print(number);
                  });
                },
                child: Text('+', style: TextStyle(fontSize: 37)),
              ),

            ],

          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>module9class3()));

            //to show dispose & deactivate, this will not go back and if you use back button
            //this will directly cuts the program
            //and to run this method you have to use pushReplacement
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>module9class3()));

          },style: ElevatedButton.styleFrom( //this button background color changed
            backgroundColor: Colors.purple
          ), child: Text('Class 3',style: TextStyle(
              color: Colors.white70
          )))
        ],
      ),
    );
  }
}

//34.40 minutes class module 11 class 1
