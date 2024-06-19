import 'package:flutter/material.dart';
import 'Item.dart';

class MenuCard extends StatelessWidget {
  final Item menu;
  final Function() deleteMenu;

  MenuCard({required this.menu, required this.deleteMenu});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,  10.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  menu.item,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87
                  ),
                ),
                SizedBox(height: 7.0),
                Text(
                  menu.price.toString(),
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[700]
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.0,),
            IconButton(
                onPressed: deleteMenu,
                icon: Icon(Icons.delete_rounded)
            ),
          ],
        ),
      ),
    );
  }
}