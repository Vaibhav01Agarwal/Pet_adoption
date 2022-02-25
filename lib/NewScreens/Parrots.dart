import 'package:flutter/material.dart';  
import 'package:fully_functional_app/configuration.dart';
import 'package:fully_functional_app/AnimalsScreens/parrots1.dart';


class Parrots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(  
        children: [  
                // First Container
       GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => ParrotScreen1()));
          }, 
      child: Container(  
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child:Row(  
                children: [  
                 Expanded(
                   child: Stack(
                     children: [  
                       Container(  
                         decoration: BoxDecoration(  
                         //  color: Colors.red[100],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                         ),
                         margin: EdgeInsets.only(top: 20, bottom: 20),
                       ),

                       Align(  
                        
                           child: Image.asset('lib/images/parrot1.jpg',  
                            width: 700,
                           height:230 ,
                          fit: BoxFit.fitWidth,
                           ),
                       )
                     ],
                   ),
                 ), 
                 Expanded(child: Container(  
                  
                                     
                 child: Center(  
                   child: Column(    
                     children: [   
                       Row(   
                            children: [  
                               SizedBox(width: 8,),
                              Text('Cockatoos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              //SizedBox(width: 10,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Cockatoos Parrot', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                        SizedBox(height: 20,),
                       Text('4 years old', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 20,),
                       Row(  
                          
                         children: [
                            SizedBox(width: 10,),
                          Icon(Icons.add_location_alt),
                           SizedBox(width: 20,),
                          Text('Distance:8.0 km', style: TextStyle(fontSize: 14))
                         ]
                       )
                     ],
                   )
                 ),
                 margin: EdgeInsets.only(top: 40, bottom: 40),
                   decoration: BoxDecoration(color: Colors.white,
                   boxShadow: shadowList,
                     borderRadius: BorderRadius.only( 
                       topRight: Radius.circular(20),
                       bottomRight: Radius.circular(20),
                       
                       
                     )
                   ) 
                     
                   ),
                
                 ),
                ],
              ) ,
            ) ,
       ),

            // Second Container

            
   GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => ParrotScreen1()));
          }, 
          child:  Container(  
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child:Row(  
                children: [  
                 Expanded(
                   child: Stack(
                     children: [  
                       Container(  
                         decoration: BoxDecoration(  
                         //  color: Colors.green[100],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                         ),
                         margin: EdgeInsets.only(top: 20, bottom: 20),
                       ),

                       Align(  
                        
                           child: Image.asset('lib/images/parrot2.jpg', 
                            width: 700,
                           height:230 ,
                          fit: BoxFit.fitWidth,
                           ),
                       )
                     ],
                   ),
                 ), 
                 Expanded(child: Container(  
                  
                                     
                 child: Center(  
                   child: Column(    
                     children: [   
                       Row(   
                            children: [  
                               SizedBox(width: 10,),
                              Text('Amazon \n Parrots ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Amazon Parrots', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                        SizedBox(height: 20,),
                       Text('1 years old', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 20,),
                       Row(  
                          
                         children: [
                            SizedBox(width: 10,),
                          Icon(Icons.add_location_alt),
                           SizedBox(width: 20,),
                          Text('Distance:2.0 km', style: TextStyle(fontSize: 14))
                         ]
                       )
                     ],
                   )
                 ),
                 margin: EdgeInsets.only(top: 40, bottom: 40),
                   decoration: BoxDecoration(color: Colors.white,
                   boxShadow: shadowList,
                     borderRadius: BorderRadius.only( 
                       topRight: Radius.circular(20),
                       bottomRight: Radius.circular(20),
                       
                       
                     )
                   ) 
                     
                   ),
                
                 ),
                ],
              ) ,
            )   ,
   ),

        ],
      ),
    );
  }
}