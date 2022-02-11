import 'package:flutter/material.dart'; 

class PrimeMembership extends StatelessWidget {
  const PrimeMembership({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(title: Text('Prime Membership'),
      backgroundColor: Colors.grey
      ),
      body: Container(  
        child: Center(  
          child:Text('Thankyou For Purchaging Prime Membership',
          style: TextStyle(fontSize:16 , fontWeight: FontWeight.bold) ) ,
          
        ),
      )
      
    );
  }
}