import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';
import 'package:fully_functional_app/profile.dart';
import 'package:fully_functional_app/settings.dart';
import 'sign_in.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,

      padding: EdgeInsets.only(top: 60, bottom: 70, left: 10),

      child: Column (  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [  
          Row(  
            children: [  
              InkWell(   
                
             child: CircleAvatar(
                backgroundImage: AssetImage('lib/images/my_image.jpg'),
                
              ),
              onTap: () {  
                Navigator.push(context , MaterialPageRoute(builder: (context) => Profile()));
              },
              ),
              SizedBox(width: 10),
              Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
                  Text('Bill Vaibhav', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('Active Status', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ))
              
                ],
              )
            ],
          ),

            Column(  
              children: drawerItems.map((element) => Padding(
                padding: const EdgeInsets.all(8.0),
              child: Row(  
                children: [   
                  Icon(element['icon'], color: Colors.white,size: 30,), 
                  Text(element['title'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold , fontSize: 20))
                ],
              ),
              )).toList(),
            ),



          Row(  
            children: [  
              Icon(Icons.settings, color: Colors.white,),
              SizedBox(width: 10,),
              InkWell(    
              child:  Text('Settings',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )) ,
               onTap: () { 
                   Navigator.push(context , MaterialPageRoute(builder: (context) => Settings()));
                },  
              ),               
              SizedBox(width: 10,),
              Container( width: 2, height: 20, color: Colors.white,),  
              SizedBox(width: 10,),
              InkWell(  
              child:Text('Log out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
             onTap: () async{  
               await FirebaseAuth.instance.signOut();
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
             },
             
              )   
                  
            ],
          )
        ],  
      ),
    );
  }
}
