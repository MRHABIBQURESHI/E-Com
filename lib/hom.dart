import 'package:flutter/material.dart';
import 'package:pro/all.dart';
import 'package:pro/fav.dart';

class hom extends StatefulWidget {
  const hom({super.key});

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {


  List<Widget> Pages = [
    all(),
    fav(),
  ];

  int bottomindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
    
        appBar: AppBar(
          
          
      
        bottom: TabBar(
          onTap: (index)
          {
            setState(() {
              bottomindex = index;
            });
          },
            
            tabs: [
              
            Tab(
              text: "All",
              icon:Icon(Icons.all_inbox),
            ),
            Tab(
              text: "Favroite",
              icon:Icon(Icons.star),
            )
          ],),
        ),
        body: Pages[bottomindex],
        
      ),
    );
  }
}

