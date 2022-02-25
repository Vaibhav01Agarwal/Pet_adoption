import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fully_functional_app/sign_in.dart';

import 'sign_in.dart';
//import 'drawerScreen.dart';
//import 'homeScreen.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    
    home: HomePage(),
   // theme:ThemeData(fontFamily: 'Circular'),
    ));
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignIn(),
      
   /*   Stack(  
   // SignIn(), 
       children: [ 
      // SignIn() 
       DrawerScreen(),
       HomeScreen(),
     ],
      ),*/
      
    );
  }
}