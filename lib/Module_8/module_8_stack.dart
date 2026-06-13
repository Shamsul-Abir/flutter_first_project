import 'package:flutter/material.dart';

class Module8Stack extends StatelessWidget {
  const Module8Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Stack',style:
          TextStyle(
            color: Colors.white
          ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                  width: 200,
              ),
              Positioned(  //alt+enter and select widget than Positioned
                bottom: 50,
                left: 10,
                right: 10,
                child: Container(
                  color: Colors.green,
                  height: 200,
                    width: 200,
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                right: 25,
                child: Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),

          SizedBox(height: 30,),

          //creating a messenger profile active decoration
          Stack(
            children: [
              CircleAvatar( //this will put a image into a CIRCLE
                radius: 80, //this will enlarge the image size
                backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fHww"
                ),
              ),

              Positioned(
                bottom: 15, //can also be used as minus and plus position
                right: 10,

                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white,width: 3)
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 10,),

          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              AnimatedContainer(duration: Duration(seconds: 10),
                height: 5,
                width: 200,
                color: Colors.blue,
              )
            ],
          ),
          
          SizedBox(height: 10,),
          
          Stack(
            children: [
              Image.network('https://www.civitatis.com/blog/wp-content/uploads/2024/01/shutterstock_590390942-1280x853.jpg'),
              Positioned(
                top: 20,
                  left: 140,
                  child: Text('Bangladesh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic
                  ),))
            ],
          )
        ],
      ),
    );
  }
}
