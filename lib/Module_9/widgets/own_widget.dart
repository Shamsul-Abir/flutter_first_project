//building our own widgets

import 'package:flutter/material.dart';

import 'City_card.dart';

class ownWidget extends StatelessWidget {
  const ownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //using scroll view here - direction allow to scroll in 2 way direction
            //1 is vertical and 2 is horizontal
            child: Row(
              children: [
                //built widgets are here
                CityCard(img: 'https://www.theglobetrottingdetective.com/wp-content/uploads/2021/07/Best-Lake-Quotes-and-Lake-Captions-for-Instagram-Varenna-town-Como-Lake-district-Italy-Europe.jpg',tittle: 'Italy',rating: '⭐ 5.0',),
                SizedBox(width: 10,),
            
                CityCard(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjuHQ2AcfFvPljvaV8ZMwVVkaJVLFQFXmH52x2D-gPnbK5Yh0ygv3PTgA&s=10',tittle: 'Germany',rating: '⭐ 4.9',),
                SizedBox(width: 10,),
            
                CityCard(img: 'https://www.onthegotours.com/cdn-cgi/image/w=610,h=410,fit=crop,gravity=center,q=80,f=auto/https://images.onthegotours.com/Gamla-Stan-823471696829426.jpg',tittle: 'Sweden',rating: '⭐ 5.0',),
              ],
            ),
          )
        ],
      ),
    );
  }
}




