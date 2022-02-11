import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';
import 'package:fully_functional_app/homeScreen.dart';
import 'package:fully_functional_app/prime.dart'; 
class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text('User Profile'),
      backgroundColor: Colors.grey,
      ),
      
      body: Container(  
        child: Column(  
          children: [ 
            SizedBox(height: 20,),
            Row(     
              children: [   
                SizedBox(width: 20,),  
            CircleAvatar(
                backgroundImage: AssetImage('lib/images/new.png'),
                backgroundColor: Colors.red,
                maxRadius: 100,
                ),
                Column(   
                  children: [  
                SizedBox(width: 50),

              Text('User', style: TextStyle(fontSize: 40),),
              SizedBox(height : 10,),
            
              Text('abcdef@gmail.com',),
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
            Text('Unlike their youthful counterparts, senior pets tend to have better manners, cutting down the amount of time and energy training takes. Most are housebroken and know basic commands. In case you are wondering, you can definitely teach old dogs new tricks.Less Mischief, More Calm. It is no secret puppies and kittens like to play with everything! Unless you are careful your new pair of shoes or your potted plants can become their new play-thing. Older pets are less destructive, instead they are more disciplined and focused.'
              ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, ), textAlign: TextAlign.justify,)          
          ],
        ),
      )
      
    );
  }
}
