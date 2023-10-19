// import 'package:flutter/material.dart';

// class fav extends StatefulWidget {
//   const fav({super.key});

//   @override
//   State<fav> createState() => _favState();
// }

// class _favState extends State<fav> {
//   @override
//   Widget build(BuildContext context) {
//     // return ListView.builder(itemBuilder: itemBuilder)
//       ,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pro/Model/item_model.dart';
import 'package:pro/data.dart';

class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
 


  @override
  Widget build(BuildContext context) {
    List<items> favorites = [];

favorites = item.where((e) => e.IsFAv).toList();
    return ListView.builder(
      
      itemCount: favorites.length,
      itemBuilder: (context , index)
      {
        return ListTile(
      title: Text(favorites[index].Name),
      subtitle: Text(
"Price ${favorites[index].Price} || Quantity : ${favorites[index].Qty}"

      ),
    );
      }
      );
  }
}

