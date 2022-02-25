import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [    
// BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

class ItemModel {
 // class constructor
 ItemModel(this.id, this.image, this.name,);
 // class fields
 final int id;
 final String image;
 final String name;
}

List<ItemModel> categories = [ 
  ItemModel(1, "lib/images/cat.png", 'Cats'),
  ItemModel(2, "lib/images/dog.png", 'Dogs'),
  ItemModel(3, "lib/images/easter-bunny.png", 'Bunnies'),
  ItemModel(4, "lib/images/parrot.png", 'Parrots'),
  ItemModel(5, "lib/images/horse.png", 'Horses'),
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