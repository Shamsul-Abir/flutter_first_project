//water tracker app

import 'dart:async';

import 'package:flutter/material.dart';

import 'Widget/add_water_button.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {
  int currentInTake = 0;
  final int goal = 3000;
  Timer ? _time;


  //to add timer count down every second
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _time = Timer.periodic(Duration(seconds: 60), (timer){

      print(timer.tick); //to show time in the terminal

        if(currentInTake > 0){
          setState(() {
            currentInTake = (currentInTake-1).clamp(0, goal);
          });

        }
      });

  }

  void waterAdd(int amount){
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);
      //this clamp will allow to automatically adjust with goal value
    });
  }

  void resetTank(){
    setState(() {
      currentInTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Water Tracker',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Today\'s In Tank',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${currentInTake} Litter',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 50),
          
              Stack(
                alignment: Alignment
                    .center, //this automatically positioned the entire alignment in the center
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      //progress loading UI
                      backgroundColor: Colors.grey,
                      color: Colors.lightBlue,
                      strokeWidth: 20, //to increase it's size
                      value:
                          progress, //here, value equation = [0.1 = 10% & 0.5 = 50%]
                    ),
                  ),
                  Text(
                    '${(progress*100).toInt()}%',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
          
              SizedBox(height: 30,),
          
              Wrap(  //uses auto spacing
                spacing: 20, //this use works horizontally
                // runSpacing: 20,  //this use works vertically
                children: [
                  addWaterButton(amount: 100, onClick:()=> waterAdd(100), icon: Icons.local_drink,),
                  addWaterButton(amount: 200, onClick:()=> waterAdd(200),),
                  addWaterButton(amount: 300, onClick:()=> waterAdd(300),),
                  addWaterButton(amount: 500, onClick:()=> waterAdd(500),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:()=> resetTank(),
                    child: Text('Reset',style: TextStyle(
                      color: Colors.black
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


