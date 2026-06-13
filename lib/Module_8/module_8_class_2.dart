//Login form

import 'package:first_flutter_project/Module_8/list_view.dart';
import 'package:flutter/material.dart';

class Module8Class2 extends StatelessWidget {
  Module8Class2({super.key});

  final _formKey = GlobalKey<FormState>(); //to identify in which form key your
  //are working in
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Module 8 Class 2',style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network('https://marketplace.canva.com/KrzKM/MAGzNqKrzKM/1/tl/canva-facebook-logo-MAGzNqKrzKM.png',
                height: 50,
                width: 200,
              ),
              SizedBox(height: 30,),
              Image.asset('asset/youtube.png',
              width: 250,
              ),
              SizedBox(height: 10,),
              Text('Login with phone & password',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  )
              ),
              SizedBox(height: 10,),
        
              Form(
                key: _formKey,
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // Text('Phone number',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 16,
                    //   ),
                    // ),
        
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please enter your phone number';
                        } else if(value.length != 11){
                          return 'Please enter correct phone number';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    // Text('Password',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 16,
                    //   ),
                    // ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
        
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please enter your password';
                        } else if(value.length < 6){
                          return 'Password must be at least 6 characters';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10,),
        
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              //Last in First Out (Lifo)
                              //to switch to another page - from Login to ListV page switch
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListV(name: phoneController.text,)));
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> ListV())); - for practice only

                              //Alternative way
                              // // ScaffoldMessenger.of(context).showSnackBar(
                              // //   SnackBar(content: Text('Login Successful.'))
                              // );  //by enabelling this code the login form will notify any issues or login process
                            }
                      }, child: Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),)),
                    )
                  ],
                ),
              ))
            ],
          ),
      ),
    );
    // flutter clean to get all path than click on pub get from pubspec.yaml
    //create a directory in the main project named as "asset" to put all images in it
  }
}


//1.07 Minutes minutes ostad module 8 - class 2