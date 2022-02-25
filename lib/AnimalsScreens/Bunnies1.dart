import 'package:flutter/material.dart';  

class BunniesScreen1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
           body: Center(  
             child: Text("Bunnies Updating", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold), ),
           )
    );
  }
}