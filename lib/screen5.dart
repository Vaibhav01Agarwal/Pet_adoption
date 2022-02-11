import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';

// for Burmese cat
class Screen5 extends StatelessWidget {
  const Screen5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(  
        children:[ 
          Positioned.fill(
            child: Column(  
              children: [  
                Expanded(
                  child: Container(  
                    color: Colors.blueGrey[300],
                  ),
                  ),
                  Expanded(                    
                    child: Container( 
                        child: Center(                                    
                       child: Column(    
                     children: [   
                      
                              SizedBox(height: 80,),
                              Text('Burmese Cat', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                           
                       Text('The Burmese cat is a breed of domestic cat, originating in Burma, believed to have its roots near the Thai-Burma border and developed in the United States and Britain.Most modern Burmese are descendants of one female cat called Wong Mau, which was brought from Burma to America in 1930 and bred with American Siamese. From there, American and British breeders developed distinctly different Burmese breed standards, which is unusual among pedigreed domestic cats.'
                       ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign:TextAlign.justify,),
                       
                       ],
                   )
                 ),
                      color: Colors.lightGreen[100],
                    ),
                  )
              ],
            )
            ),

            Container(
              margin: EdgeInsets.only(top: 40),
              child: Align(  
                alignment: Alignment.topCenter,
                child: Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [  
                    IconButton( 
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: (){  
                        Navigator.pop(context);
                      }),
            
                      IconButton(icon: Icon(Icons.share), onPressed: (){
            
            
                      }),
                     
                  ],
                ),
              ),
            ),
         
         Container(
           margin: EdgeInsets.only(top: 20),
           child: Align(  
             alignment: Alignment.topCenter,
             child: Hero(
                 tag: 1,
               child: Image.asset('lib/images/new4.jpg', width: 280, )),
           ),
         ),
         Align(  
           alignment: Alignment.center,
           child: Container ( 
                                   
                 child: Center(  
                   child: Column(    
                     children: [   
                       Row(   
                            children: [  
                               SizedBox(width: 10,),
                              Text('Burmese', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 200,),
                              Icon(Icons.male, size: 30,),
                            ],

                       ),  
                       // SizedBox(width: 5,),
                       Text('Burmese Cat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                       Text('1 years old', style: TextStyle(fontSize: 20)),
                       Row(  
                     
                         children: [
                            SizedBox(width: 5,),
                          Icon(Icons.add_location_alt),
                           SizedBox(width: 20,),
                          Text('Distance:2.0 km', style: TextStyle(fontSize: 14))
                         ]
                       )
                     ],
                   )
                 ), 
            height: 120,
             margin: EdgeInsets.symmetric(horizontal: 20),
             decoration: BoxDecoration(  
               color: Colors.white , // Stack box color(Small box on screen).
               boxShadow: shadowList,
               borderRadius: BorderRadius.circular(20)
             )
             
           ),
         ),
         Align(  
           // Box of heart icon and adoption title
           alignment: Alignment.bottomCenter,
           child: Container( 
             
              margin: EdgeInsets.symmetric(horizontal: 10),
             height: 150,
    child: Row(  
      children: [  
        Container( 
          height: 70,
          width: 70,
          
          decoration: BoxDecoration(  
            color: primaryGreen,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Icon(Icons.favorite_border, color: Colors.white,),
        ),
      SizedBox(width: 10,),

      // Box of adoption container
      Expanded(
        child: Container(
          height: 60,
            decoration: BoxDecoration(
              color: primaryGreen,
              borderRadius: BorderRadius.circular(20)
            ),
          child: Center(child: Text('Adoption' , style: TextStyle(color: Colors.white, fontSize: 25),)),

        ),
      )
      ],
    ),
             
             // Box below Adoption container
             decoration: BoxDecoration( 
               color: Colors.grey[200],
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight:Radius.circular(40), )

             ),
           ),
         )
        ],
      ),
       
    );
  }
}