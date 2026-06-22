//today's learning items - 1.Drawer in app
// 2. Tab Bar in Mobile App

import 'package:flutter/material.dart';

import '../Module_8/module_8_class_1.dart';
import '../Module_8/module_8_class_2.dart';
import '../Module_8/module_8_class_3.dart';

class module_9_class_2 extends StatelessWidget {
  const module_9_class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //also add length while adding tabs - it show how many tabs are there
      child: Scaffold(  //add widget - 'DefaultTabController'  in Scaffold while building Tabs in Apps
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Module 9 Class 2',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
          ),
          ),
          //tab Bar
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home,color: Colors.white,),
                child: Text('Home',style: TextStyle(
                  color: Colors.white
                ),),
              ),
              Tab(
                icon: Icon(Icons.star,color: Colors.white),
                child: Text('Favourites',style: TextStyle(
                    color: Colors.white
                ),),
              ),
              Tab(
                icon: Icon(Icons.settings,color: Colors.white),
                child: Text('Settings',style: TextStyle(
                    color: Colors.white
                ),),
              ),
            ],
          ),
          centerTitle: true,
        ),


        //Tab Bar Body - here Tab length serials will take one by one container
        //in the tab bar body ^
        body: TabBarView(
          children: [
            /*Container(
              height: 200,
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text('Home', style: TextStyle(
                    fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Container(
              height: 200,
              color: Colors.pink,
              child: Center(
                child: Text('Favourites', style: TextStyle(
                    fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Container(
              height: 200,
              color: Colors.teal,
              child: Center(
                child: Text('Settings', style: TextStyle(
                    fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),*/

            //we can also use direct dart files in the tab bar serially
            //first connect the dart file and import
            module8class1(),
            Module8Class2(),
            Module8Clss3(),
          ],
        ),


        //creating a drawer or navbar in the app
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/79713806?s=400&u=88e6b0787dc417806100bfd65b72c36b12725005&v=4'),
                  ),//puts image in a circle
                  SizedBox(height: 10,),
                  Text('Md. Shamsul Arefin Abir', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text('samsulabir@gmail',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),)

                ],
              )),
              // TextButton(onPressed: (){}, child: Text('Hello')),
              // Divider(),
              // TextButton(onPressed: (){}, child: Text('Hello')),
              // Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                // this will lower the distances between the nav bar lists ^
                dense: true,
                //this will lower the title size ^
                title: Text('Home'),
                // onTap: (){},
              ),
              Divider(
                // thickness: 1,
                // color: Colors.blue,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Item-1'),
                // onTap: (){},
              ),
              Divider(
                // thickness: 1,
                // color: Colors.blue,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Item-2'),
                onTap: (){},
              ),
              Divider(
                // thickness: 1,
                // color: Colors.blue,
              ),

              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Item-3'),
                onTap: (){},
              ),
              Divider(
                // thickness: 1,
                // color: Colors.blue,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Item-4'),
                onTap: (){},
              ),
              Divider(
                // thickness: 1,
                // color: Colors.blue,
              ), //this will create a line after list

            ],
          ),
        ),
      ),
    );
  }
}

//Module 9 Class 2 - 31.58 minutes
