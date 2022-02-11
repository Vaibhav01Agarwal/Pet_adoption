import 'package:flutter/material.dart';
import 'package:fully_functional_app/configuration.dart';  

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold),),
      backgroundColor: primaryGreen),
      body: Container(   
        
      ),
      
      
    );
  }
}