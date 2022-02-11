import 'package:flutter/material.dart';
import 'signUp.dart';

class SignIn extends StatefulWidget {
  

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                 
                  labelText: 'email' ,
                  hintText: 'Enter Your Email'
                  )
              ),  
      
               TextField(  
                 decoration: InputDecoration(
                 
                  labelText: 'Password' ,
                  hintText: 'Enter Your Password'
                  )
              
              ),
               SizedBox(height: 10,),
               Container(  
                 alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                 child: Text("Forget Password" , 
                 //style: simpleTextStyle()
                  )
               ),
               SizedBox(height: 10,),
               Container(
                 alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(vertical:20),
                  decoration:   BoxDecoration  (   
                    color: Colors.grey,


       /*   gradient: LinearGradient(  
                      colors: [  
                        
                         Color(0xff007EF4),
                         Color(0xff2A758C)
                      ]
                    ),*/


                    borderRadius: BorderRadius.circular(30)
                  ), 
                 child: Text("SignIn" , 
                 style: TextStyle(  
                  color: Colors.white,
                  fontSize: 20
                ),
                 )
               ),
               SizedBox(height: 18,),
                Container(
                 alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(vertical:20),
                  decoration:   BoxDecoration  (  
                    //color: Colors.white,
                    color:  Colors.grey[350],
                    borderRadius: BorderRadius.circular(30)
                  ), 
                 child: Text("Sign In with Google" , 
                 style: TextStyle(  
                  color: Colors.black87,
                  fontSize: 20
                ),
                 )
               ),
               SizedBox(height: 18,),
              
              Row(   
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  Text("Don't have account?" , style: TextStyle(  
                  color: Colors.black,
                  fontSize: 17,
               //style: mediumTextStyle(),
                   ) ),
                   InkWell(  
                child:  Text("Register now" , style: TextStyle(  
                  color: Colors.black,
                  fontSize: 17,
                  decoration: TextDecoration.underline
                ),),
                onTap: (){   
                   Navigator.push(context , MaterialPageRoute(builder: (context) => SignUp()));
                },)
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