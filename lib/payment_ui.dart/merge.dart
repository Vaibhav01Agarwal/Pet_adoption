import 'package:flutter/material.dart';
import 'package:fully_functional_app/main.dart';
import 'carddetails.dart';
import 'data.dart';

import 'cardsection.dart';
import 'header.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      backgroundColor: primaryColor, 
            body: Column(  
              children: [  
                SizedBox(height: 20,),
                Container(    
                  height: 120,
                  child: WalletHeader(),
                ),
                Expanded(child: CardSection()),
                Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      
                  child: ElevatedButton(  
                    
                    child: Text('back to home screen'),
                    
                    onPressed: () {  
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
                    },
                    style: ButtonStyle(  
                      backgroundColor: MaterialStateProperty.all(Color(0xFFCADCED)),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}