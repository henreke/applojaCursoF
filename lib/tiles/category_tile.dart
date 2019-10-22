import 'package:apploja/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryTile extends StatelessWidget {

  final DocumentSnapshot snaphot;
  CategoryTile(this.snaphot);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(snaphot.data["icon"]),
      ),
      title: Text(snaphot.data["title"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
            print(snaphot.data["title"]);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>CategoryScreen(snaphot))
            );
      },
    );
  }
}
