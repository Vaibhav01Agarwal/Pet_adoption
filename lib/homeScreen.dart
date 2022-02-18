import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';
import 'package:fully_functional_app/screen2.dart';
import 'package:fully_functional_app/search.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';
import 'screen6.dart';
import 'settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    double xOffset=0;
    double yOffset=0;
    double scaleFactor=1;
    bool isDrawerOpen=false;

  @override
  Widget build(BuildContext context) {


    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor)..rotateY(isDrawerOpen?-0.4:0),


      duration: Duration(milliseconds: 250),
      

      decoration: BoxDecoration(  
        color: Colors.grey[200],
       // borderRadius: BorderRadius.circular(10)
      ),
      child: SingleChildScrollView(   
         child: Column(  
        children: [  
          SizedBox(height: 50,),


          Container( 
              margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [  
              isDrawerOpen?IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {  
                  setState(() {
                    xOffset=0;
                    yOffset=0;
                    scaleFactor=1;
                    isDrawerOpen=false;
                  });
                },
              ):IconButton(icon: Icon(Icons.menu), onPressed: (){
            
            setState(() {
              xOffset=230;
              yOffset=150;
              scaleFactor=0.6;
              isDrawerOpen=true;
            });
          }),

          Column(   
            
            children: [  
              
              //Text('Location'),

            Row(  
              children: [  
                
                Icon(Icons.location_on, color: primaryGreen,),
                  Text('Haridwar')
              ],
            ),
            ],
           )
            ],
          )),

          Container( 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(  
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [  
                // Add working search Bar  

                IconButton(
                 icon: Icon(Icons.search),
                 onPressed: () {  

                    showSearch(
                      context: context,
                       delegate: MySearchDelegate(), 
                       );
                       },                 
                 ),
                
               
                Text('Search pet to adopt'),

                      IconButton(
                 icon: Icon(Icons.settings),
                 onPressed: () { 
                  
                    Navigator.push(context , MaterialPageRoute(builder: (context) => Settings()));
              
                  
                 },                 
                 ),               
              ],
            ),
          ),


            Container(height: 120, 
            child: ListView.builder(
              scrollDirection:Axis.horizontal, 
              itemCount: categories.length,
              itemBuilder: (context, index){  
                return Container(  
                  child: Column(  
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [  
                      
                      Container(   

                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        decoration:  BoxDecoration(  
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(categories[index]['iconpath'],
                        height: 50,
                        width: 50,color: Colors.grey[700],),
                      ),
                      Text(categories[index]['name'])
                    ],
                  ),
                );
          
              },
              ),
            ),
      
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
      ),),
    );
  }
}



