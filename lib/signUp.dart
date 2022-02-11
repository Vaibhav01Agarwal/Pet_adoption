import 'package:flutter/material.dart';
import 'package:fully_functional_app/SignIn.dart';

class SignUp extends StatefulWidget {
  

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title:Text('Pet Adoption'),
      backgroundColor: Colors.grey,),
      body: SingleChildScrollView(
        child: Container(  
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(  
            mainAxisSize: MainAxisSize.min,
            children: [  
      
              TextField(  
                decoration: InputDecoration(
                 
                  labelText: 'Username' ,
                  hintText: 'Enter Your Name'
                  )
              ),  
      
               TextField(  
                 decoration: InputDecoration(
                 
                  labelText: 'Email' ,
                  hintText: 'Enter Your Email'
                  )
              
              ),

                TextField(  
                 decoration: InputDecoration(
                 
                  labelText: 'Password' ,
                  hintText: 'Enter Your Password'
                  )
              
              ),
            /*   SizedBox(height: 10,),
               Container(  
                 alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                 child: Text("Forget Password" , 
                 //style: simpleTextStyle()
                  )
               ),*/
               SizedBox(height: 50,),
               Container(
                 alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(vertical:20),
                  decoration:   BoxDecoration  (   
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)
                  ), 
                 child: Text("SignUp" , 
                 style: TextStyle(  
                  color: Colors.white,
                  fontSize: 20
                ),
                 )
               ),
           
               SizedBox(height: 18,),
              
              Row(   
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  Text("Already have account?" , style: TextStyle(  
                  color: Colors.black,
                  fontSize: 17,
               //style: mediumTextStyle(),
                   ) ),
                   InkWell(   
                  child: Text("SignIn now" , style: TextStyle(  
                  color: Colors.black,
                  fontSize: 17,
                  decoration: TextDecoration.underline
                ),),
                onTap: () {  
                    Navigator.push(context , MaterialPageRoute(builder: (context) => SignIn()));
                },
                   )
                ],
              ),
              SizedBox(height: 90,)
            ],
          ),
        ),)
      ),
      );
      
  }
}