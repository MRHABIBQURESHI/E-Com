import 'package:aptech/cal.dart';
import 'package:aptech/chats.dart';
import 'package:aptech/s.dart';
import 'package:flutter/material.dart';

class navig extends StatefulWidget {
  const navig({super.key});

  @override
  State<navig> createState() => _navigState();
}

class _navigState extends State<navig> {

List<Widget> Pages = [
  chats(),
  s(),
  cal(),
];

  int buttomindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Pages[buttomindex], 
    
bottomNavigationBar: BottomNavigationBar(
  currentIndex: buttomindex,
  onTap: (index)
  {
    setState(() {
      buttomindex = index;
    });
  },
  items: 
[
  BottomNavigationBarItem(
    label: "Home",
    icon: Icon(Icons.home)),
    BottomNavigationBarItem(
      label: "Orders",
      icon: Icon(Icons.wallet,)),
      BottomNavigationBarItem(
        label: "Profile",
        icon: 
      Icon(Icons.person)),

]),

    );
  }
}
