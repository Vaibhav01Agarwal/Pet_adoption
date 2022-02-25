import 'package:flutter/material.dart';  

class ParrotScreen1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
           body: Center(  
             child: Text("Parrots Updating", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold), ),
           )
    );
  }
}