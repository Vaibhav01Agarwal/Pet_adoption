import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [    
 //BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [  
  {'name' : 'Cats' , 'iconpath' : 'lib/images/cat.png'},
  {'name' : 'Dogs' , 'iconpath' :  'lib/images/dog.png'},
  {'name' : 'Bunnies' , 'iconpath' : 'lib/images/easter-bunny.png'},
  {'name' : 'Parrots' , 'iconpath' : 'lib/images/parrot.png'},
  {'name' : 'Horses' , 'iconpath' : 'lib/images/horse.png'},
];

List<Map> drawerItems=[  
  { 
    'icon': FontAwesomeIcons.paw,
    'title': 'Adoption'
  },
   { 
    'icon': Icons.mail,
    'title': 'Donation'
  },
   { 
    'icon': FontAwesomeIcons.plus,
    'title': 'Add pet'
  },
   { 
    'icon': Icons.favorite,
    'title': 'Favorite'
  },
   { 
    'icon': Icons.mail,
    'title': 'Messages'
  },
   { 
    'icon': FontAwesomeIcons.userAlt,
    'title': 'Profile'
  },
];