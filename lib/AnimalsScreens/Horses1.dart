import 'package:flutter/material.dart';  

class HorseScreen1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
           body: Center(  
             child: Text("Horses Updating", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold), ),
           )
    );
  }
}