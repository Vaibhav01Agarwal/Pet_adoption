import 'package:flutter/material.dart';  
import 'data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack( 
      children: <Widget> [  
        Align(alignment: Alignment.topLeft, child: Container(  
          width: 250,
          child: Image.asset('lib/images/Mastercard_logo.png'),),),

          Align( alignment: Alignment.bottomRight, child: Padding(  
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
               width: 70,
                decoration: BoxDecoration(
                  color: primaryColor,
                   boxShadow: customShadow,
                   borderRadius: BorderRadius.circular(15)),
            ),
          ),),

          Align(alignment: Alignment.bottomLeft,  
          child: Padding(  
            padding: EdgeInsets.only(bottom:30, left: 10),
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [   
                Row(   
                  children: [   
                    Text('**** **** ****' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), 
                    Text('1550' , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                  ],
                ),

                Text('PLATINUM CARD', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          )
      ],   
      
    );
  }
}