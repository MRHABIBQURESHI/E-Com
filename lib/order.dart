import 'package:flutter/material.dart';
import 'package:pro/data.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
   
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context , index)
      {
        return ListTile(
      title: Text(orders[index].Name),
      subtitle: Text(
"Price ${orders[index].Price} || Quantity : ${orders[index].Qty}"

      ),
    );
      }
      );
  }
}