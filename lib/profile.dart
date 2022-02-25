import 'package:flutter/material.dart';
import 'package:fully_functional_app/prime.dart'; 
class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: const Text('User Profile'),
      backgroundColor: Colors.grey,
      ),
      
      body: SingleChildScrollView(    
      child:Column(
        children: [
          Container(  
            child: Column(  
              children: [ 
                SizedBox(height: 20,),
                Row(     
                  children: [   
                   SizedBox(width: 20,),  
                CircleAvatar(
                    backgroundImage: AssetImage('lib/images/my_image.jpg'),
                    backgroundColor: Colors.red,
                    maxRadius: 100,
                    ),
                    Column(   
                      children: [  
                    SizedBox(width: 50),

                  Text('Bill', style: TextStyle(fontSize: 40),),
                  SizedBox(height : 10,),
                
                  Text('bill.rubico@gmail.com',),
                  SizedBox(height: 10,),
                  Text('8584868281'),

                      ]
                    )
                  
                  ]
                ),
                SizedBox(height: 30,),
                ElevatedButton( child: Text('Prime Membership', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                onPressed: () {
                    Navigator.push(context , MaterialPageRoute(builder: (context) => PrimeMembership()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[600]
                ),
                ),
                SizedBox(height: 40,),
                Text('About', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text('Hello I am Bill, I did MCA from GL Bajaj , greater Noida. I am a Mobile Developer love to build the application for mobiles.I love to do play with animals. I enjoyed the company of animals very much. They are sweet and very loveable.    '
                  ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, ), textAlign: TextAlign.justify,)          
              ],
            ),
          ),
        ],
      )
    )
      
    );
  }
}
