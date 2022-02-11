import 'package:flutter/material.dart'; 

class Adoption extends StatelessWidget {
  const Adoption({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('Pet Adoption'),),
      body: Container(  
        child: Center(  
          child: Text('Thankyou for adopting a pet' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}