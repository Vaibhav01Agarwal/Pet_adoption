import 'package:flutter/material.dart';
import 'package:fully_functional_app/NewScreens/Bunnies.dart';
import 'package:fully_functional_app/NewScreens/Cats.dart';
import 'package:fully_functional_app/NewScreens/Dogs.dart';
import 'package:fully_functional_app/NewScreens/Horses.dart';
import 'package:fully_functional_app/NewScreens/Parrots.dart';
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
  bool flag0= true;
  bool flag1= false;
  bool flag2= false;
  bool flag3= false;
  bool flag4= false;


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
            child: 
            ListView.builder(
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
                        child:
                        InkWell(   
                          onTap: () {    
                            setState(() {
                              if(index==0){  
                                 flag0 = true;
                                flag1 = false;
                                 flag2 = false;
                                 flag3 = false;
                                 flag4 = false;                   
                             }
                             if(index==1)
                             { 

                                    flag0 = false;
                                 flag1 = true;
                                 flag2 = false;
                                 flag3 = false;
                                 flag4 = false; 
                              }
                              if(index==2) {  
                                flag0 = false;
                                 flag1 = false;
                                 flag2 = true;
                                 flag3 = false;
                                 flag4 = false; 
                              }if(index==3){  
                               flag0 = false;
                                 flag1 = false;
                                 flag2 = false;
                                 flag3 = true;
                                 flag4 = false; 
                              }if(index==4) {  
                               flag0 = false;
                                 flag1 = false;
                                 flag2 = false;
                                 flag3 = false;
                                 flag4 = true; 
                              }
                            });
                          }, 
                        child: Image.asset(categories[index].image,
                        height: 50,
                        width: 50,color: Colors.grey[700],),
                      ),
                      ),
                      Text(categories[index].name),
                    
                    ],
                  ),
                );
              },
              ),
            ),
      
  // Removing my code to switch from one file to another
  
  Visibility(
   visible: flag0,
   child: Cats()
    ),

     Visibility(
    visible: flag1,
    child: Dogs()
    ),

     Visibility(
    visible: flag2,
    child: Bunnies()
    ),

     Visibility(
    visible: flag3,
    child: Parrots()
    ),

     Visibility(
    visible: flag4,
    child: Horses()
    ),
     

      
         ],
      ),),
    );
  }

}
  



