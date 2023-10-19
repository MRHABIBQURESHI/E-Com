import 'package:flutter/material.dart';
import 'package:pro/Model/item_model.dart';
import 'package:pro/data.dart';
// import 'package:pro/order.dart';

class all extends StatefulWidget {
  const all({super.key});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
   
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
    IconButton(onPressed: () {
      bool isadded = false;

for (var i = 0; i < orders.length; i++) {
  if (orders[i].id == item[index].id) {
    orders[i].Qty += 1;
    isadded = true;
    break;
    
  }
  
}
if (isadded == false) 
{
  orders.add(items(
 id:item[index].id,
 Name:item[index].Name,
 Price:item[index].Price,
 Qty:1,
  ),);
  
}



    }, icon: Icon(Icons.add)),
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