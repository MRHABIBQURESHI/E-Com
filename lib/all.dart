import 'package:flutter/material.dart';

class all extends StatefulWidget {
  const all({super.key});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
    List<items> item =[
items(Name: "Burger", Price: 350, Qty: 4),
items(Name: "Pizza", Price: 1200, Qty: 2),
items(Name: "Zinger", Price: 250, Qty: 3),
items(Name: "Juices", Price: 150, Qty: 5),
items(Name: "Chips", Price: 50, Qty: 6),
items(Name: "Tikka", Price: 550, Qty: 47),
items(Name: "Brost", Price: 650, Qty: 7),
items(Name: "Nuggest", Price: 450, Qty: 5),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      itemBuilder: (context ,index)
      {
        return ListTile(
        title: Text(item[index].Name),
        subtitle: Text("Price : ${item[index].Price} | Quantity : ${item[index].Qty} "),
trailing: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    IconButton(onPressed: () {
      setState(() {
        item[index].IsFAv = !(item[index].IsFAv);
      });
    }, icon: Icon(item[index].IsFAv
    ? Icons.favorite
    :Icons.favorite_border,
    color: Colors.red,
    
    )),
  ],
),


        );
      }

       
      
      
      );
      
      
    
   
  }
}

class items {
  String Name;
  int Price;
  int Qty;
  bool IsFAv;

  items({
 
 required this.Name,
 required this.Price,
 required this.Qty,
this.IsFAv = false,
  });
}