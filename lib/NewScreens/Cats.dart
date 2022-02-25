import 'package:flutter/material.dart';
import 'package:fully_functional_app/screen2.dart';
import 'package:fully_functional_app/screen3.dart';
import 'package:fully_functional_app/screen4.dart';
import 'package:fully_functional_app/screen5.dart';
import 'package:fully_functional_app/screen6.dart';
import '../configuration.dart';  

class Cats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(   
        children: [   

        GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => Screen2()));
          },  
            child:Container(  
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child:Row(  
                children: [  
                 Expanded(
                   child: Stack(
                     children: [  
                       Container(  
                         decoration: BoxDecoration(  
                           // color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                         ),
                         margin: EdgeInsets.only(top: 20, bottom: 20),
                       ),

                       Align(  
                         child: Image.asset('lib/images/new.png'),
                       )
                     ],
                   ),
                 ), 
                 Expanded(                    
                child: Container(  
                  
                                     
                 child: Center(  
                   child: Column(    
                     children: [   
                       Row(   
                            children: [  
                               SizedBox(width: 10,),
                              Text('Persian', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Persian Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                        SizedBox(height: 20,),
                       Text('2 years old', style: TextStyle(fontSize: 20)),
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
            ),
         ),
     

    // second container

Visibility(
  
  child: 
   GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => Screen3()));
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
                          // color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                         ),
                         margin: EdgeInsets.only(top: 20, bottom: 20),
                       ),

                       Align(  
                         child: Hero(
                          tag: 1,
                           child: Image.asset('lib/images/new5.png' , 
                           width: 700,
                           height:250 ,
                          fit: BoxFit.fitWidth,
                           )
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
                              Text('Siamese', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Siamese Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                        SizedBox(height: 20,),
                       Text('1 years old', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 20,),
                       Row(  
                          
                         children: [
                            SizedBox(width: 10,),
                          Icon(Icons.add_location_alt),
                           SizedBox(width: 20,),
                          Text('Distance:5.0 km', style: TextStyle(fontSize: 14))
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
            )  ,
   ),

),

            // Third Container
       GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => Screen4()));
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
                        
                           child: Image.asset('lib/images/new3.jpeg',  
                            width: 700,
                           height:250 ,
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
                              Text('Siberian', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Siberian Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
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

            // Fourth Container

            
   GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => Screen5()));
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
                        
                           child: Image.asset('lib/images/new4.jpg', 
                            width: 700,
                           height:250 ,
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
                              Text('Burmese', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Burmese Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
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

            // Fifth Container  
             GestureDetector(
          onTap: (){  
            Navigator.push(context , MaterialPageRoute(builder: (context) => Screen6()));
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
                        //   color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                         ),
                         margin: EdgeInsets.only(top: 20, bottom: 20),
                       ),

                       Align(                          
                           child: Image.asset('lib/images/new6.jpg',
                            width: 700,
                           height:250 ,
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
                              Text('Somali', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 30,),
                              Icon(Icons.male, size: 20,),
                            ],

                       ),
                        SizedBox(height: 20,),
                       Text('Somali Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                        SizedBox(height: 20,),
                       Text('3 years old', style: TextStyle(fontSize: 20)),
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
            )  ,
         ), 

        ],
      ),
      
    );
  }
}