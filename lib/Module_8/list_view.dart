//List View in Emulator App

import 'package:flutter/material.dart';

class ListV extends StatefulWidget {
  final name;
  const ListV({super.key, required this.name}); //this name is linked with module_8_class_2
  //in navigator line

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold - provides a surface in the app to work
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('List View',style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic  //to make the text italic
          ),),
          centerTitle: true,
        ),

      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
            return Card(  //creates a card for every list item
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.blue,),
                trailing: Icon(Icons.delete,color: Colors.red,),
                title: Text('ABIR',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                // subtitle: Text('01973320109'),
                subtitle: Text(widget.name), //this will add the same number in the contact list
                //that you have used to login
              ),
            );
      }),
    );
  }
}

