import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';  
import 'package:fully_functional_app/payment_ui.dart/merge.dart';


class DogScreen1 extends StatelessWidget {
 
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
                            
                              Text('Labrador Dog', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                           
                       Text('The Labrador Retriever or Labrador is a British breed of retriever gun dog. It was developed in the United Kingdom from fishing dogs imported from the colony of Newfoundland (now a province of Canada), and was named after the Labrador region of that colony.'
                       ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), textAlign:TextAlign.justify,),
                       
                       ],
                   ),
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
               child: Image.asset('lib/images/dog3.jpg', width: 200, )),
           ),
         ),
         Align(  
           alignment: Alignment.center,
           child: Container ( 
                                   
                 child: Center(  
                   child: Column(    
                     children: [   
                       Row(   
                         mainAxisAlignment: MainAxisAlignment.center,
                            children: [  
                               SizedBox(width: 10,),
                              Text('Labrador', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                              SizedBox(width: 150,),
                              Icon(Icons.male, size: 30,),
                            ],
    
                       ),  
                       // SizedBox(width: 5,),
                       Text('Labrador Dog', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), textAlign:TextAlign.start,),
                       Text('4 years old', style: TextStyle(fontSize: 20)),
                       Row(  
                     mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           
                            SizedBox(width: 5,),
                          Icon(Icons.add_location_alt),
                        //   SizedBox(width: 20,),
                          Text('Distance:10.0 km', style: TextStyle(fontSize: 14))
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
             height: 100,
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
         
        child: InkWell(
          child: Container(
            height: 60,
              decoration: BoxDecoration(
                color: primaryGreen,
                borderRadius: BorderRadius.circular(20)
              ),
              
            child: Center(child: Text('Adoption' , style: TextStyle(color: Colors.white, fontSize: 25),)),
            
          ),
          onTap: () {   
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2()));
          },
        ),
      ),
      
      
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