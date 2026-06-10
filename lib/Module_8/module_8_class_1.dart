import 'package:flutter/material.dart';

class module8class1 extends StatelessWidget {
  const module8class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('\'Module 8 - Class 1\''),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            //alt+enter and select padding from the list ^
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.phone, //to change the input type,
              //where it can be text/number/or other need to add this code line ^
              //this will show number keyboard on the mobile screen ^
              controller:phoneController, //after assigning text editing controller,
              // have to put this code - by this code we will get value
              decoration: InputDecoration(
                hintText: 'Enter your number',
                labelText: 'Phone number',
                prefixIcon: Icon(Icons.phone, color: Colors.blue),
                suffixIcon: Icon(Icons.check, color: Colors.blue),
                //prefix - agey and suffix - poray ^
                hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
          ), //input bar
          SizedBox(height: 10),
          Padding(
            //alt+enter and select padding from the list ^
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true, //to make any password/text hidden,
              // need to add this code ^
              controller: passwordController, //after assigning text editing controller,
              // have to put this code - by this code we will get value ^
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Colors.blue),
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blue),
                //prefix - agey and suffix - poray ^

                hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 150,
            height: 41.5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                onPressed: () { //to put condition
                  if(phoneController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      //this  ScaffoldMessenger.of(context).showSnackBar
                      //code will provide automatic popup bar in the screen
                      SnackBar(content: Text('Please enter phone number'))
                    );
                  }else if(phoneController.text.length < 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter correct phone number'))
                    );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(phoneController.text))
                    );
                  }
                  // print(phoneController.text);  //this one is updating both value of the text box,
                  print(passwordController.text);  //this one is updating both value of the text box,
                  // by using submit button ^
                }, child: Text('Submit',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.5,
            ),)),
          ),
          SizedBox(height: 10,), //to create a gap
          Card(
            child: SizedBox(
              //this created to clear input in the number & pass boxes
              width: 150,
              height: 41.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey
                  ),
                  onPressed: () {
                    phoneController.clear();
                    passwordController.clear();
                  }, child: Text('Clear',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.5,
              ),)),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center, //to maintain alignment of
            // container's text correctly ^

            height: 50,
            width: 220,
            //this will show the containers exact size
            decoration: BoxDecoration(
              // shape: BoxShape.circle, - we will learn in future
              //if you ran an the empty box decoration
              //this will definitely give an error in the code
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //opacity works as shadow
                  offset: Offset(10, 10) //by increasing 1st one this will go to these --> direction
                  //by increasing the 2nd one this will increase to v direction
                )
              ]
            ),
            child: Text('This is a container'),
          ),
          SizedBox(height: 10,),
          // Card(
          //   color: Colors.blue,
          //   child: Text('I\'m card'),
          // card used in the clear button ^
          // )

        ],
      ),
    );
  }
}
