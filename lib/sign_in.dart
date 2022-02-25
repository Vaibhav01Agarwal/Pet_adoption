import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:fully_functional_app/drawerScreen.dart';
import 'package:fully_functional_app/homeScreen.dart';
import 'package:fully_functional_app/main.dart';
// import 'package:fully_functional_app/stack_drawer_home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'CallHomeScreen.dart';
import 'signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  

  @override
  _SignInState createState() => _SignInState();
}

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final googlesignIn = GoogleSignIn();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Pet Adoption'),
      backgroundColor: Colors.grey,),
      body: SingleChildScrollView(
        child: Container(  
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(  
            mainAxisSize: MainAxisSize.min,
            children: [  
             const TextField(  
                decoration: InputDecoration(
                 
                  labelText: 'email' ,
                  hintText: 'Enter Your Email'
                  )
              ),  
      
               const TextField(  
                 decoration: InputDecoration(
                 
                  labelText: 'Password' ,
                  hintText: 'Enter Your Password'
                  )
              
              ),
               const SizedBox(height: 10,),
               Container(  
                 alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                 child: const Text("Forget Password" , 
                 //style: simpleTextStyle()
                  )
               ),
               const SizedBox(height: 10,),
                
                Container(
                 alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric(vertical:20),
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
                  
                 child: const Text("SignIn" , 
                 style: TextStyle(  
                  color: Colors.white,
                  fontSize: 20
                ),
                 ),
                
                  ),
                  
               SizedBox(height: 18,),
             InkWell(
               child:  Container(
                 alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(vertical:20),
                  decoration:   BoxDecoration  (  
                    //color: Colors.white,
                    color:  Colors.grey[350],
                    borderRadius: BorderRadius.circular(30)
                  ), 
               
                 child:const Text("Sign In with Google" , 
                 style: TextStyle(  
                  color: Colors.black87,
                  fontSize: 20
                ),
                 ),
                
                
                 ),
                 onTap: (){
                   _signInWithGoogle();
                  //  signInWithGoogle();
                  //  var user = signInWithGoogle();
                  //  print(user);
                 },
               ),

               // Github Authantication button  
                 
              
               SizedBox(height: 18,),
              
              Row(   
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  const Text("Don't have account?" , style: TextStyle(  
                  color: Colors.black,
                  fontSize: 17,
               //style: mediumTextStyle(),
                   ) ),
                   InkWell(  
                child:  const Text("Register now" , style: TextStyle(  
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

  _signInWithGoogle() async { 
    if(googlesignIn.isSignedIn() == true){
print("already account");
    }
    else{
      print("not ac");
    }
     
    final GoogleSignInAccount? googleUser = await googlesignIn.signIn();

    googlesignIn.signIn().catchError((error)=>print(error));
  
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    
      
    final AuthCredential credential = GoogleAuthProvider.credential(  
      idToken: googleAuth.idToken , accessToken: googleAuth.accessToken);

    final user = (await firebaseAuth.signInWithCredential(credential)).user;
    print(user?.email.toString());
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CallHomeScreen()));
    
  }
  
}