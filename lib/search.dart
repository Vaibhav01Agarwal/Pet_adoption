import 'package:flutter/material.dart';  


class MySearchDelegate extends SearchDelegate { 

 
  List<String> searchResults = [    
      'Persian cat',
      'Saimese cat',
      'Siberian',
      'Burmese',
      'Somali',
    ];

  @override  
  Widget? buildLeading (BuildContext context) => IconButton(
     icon: Icon(Icons.arrow_back)  ,
     onPressed: () => close(context, null),  // close searchbar
     );
  

   @override  
  List<Widget>? buildActions (BuildContext context) =>[  

     IconButton(
     icon: Icon(Icons.clear),
     onPressed: () {  
       if(query.isEmpty) {  
         close(context, null);  // close searchbar
       }else{    
       query= '';
       }
     },
     ),
  ];

     
   @override  
  Widget buildResult (BuildContext context) =>Center(   
    child: Text(  
      query,
      style: TextStyle(fontSize:64  , fontWeight: FontWeight.bold),
    ),
  );

   @override  
  Widget buildSuggestions (BuildContext context)  {   
 
    List<String> suggestions = searchResults.where((searchResult) {  

            final result = searchResult.toLowerCase();
            final input = query.toLowerCase();
            
            return result.contains(input); 
    }).toList();    
      

    return ListView.builder  (  
      itemCount: suggestions.length,
      itemBuilder: (context , index) {  
        final suggestion = suggestions[index];

         return ListTile  (  
           title: Text(suggestion),
           onTap: () {
                query = suggestion;
                showResults(context); 
           },
         );
      },
    );
  }

 

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
