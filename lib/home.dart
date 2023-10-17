import 'package:flutter/material.dart';
import 'package:pro/hom.dart';
import 'package:pro/order.dart';
import 'package:pro/profile.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<Widget> Pages = [
    hom(),
    order(),
    profile(),

  ];
  int bottomindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Pages[bottomindex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomindex,
        
        onTap: (index){
          setState(() {
            bottomindex = index;
          });
        },
        showSelectedLabels: true,
        items: [
        BottomNavigationBarItem(
          
          label: "Home",
          icon: Icon(Icons.home)),
           BottomNavigationBarItem(
          label: "Order",
          icon: Icon(Icons.wallet)),
           BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person))
      ]),

    );
  }
}