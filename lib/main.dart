import 'package:flutter/material.dart';
import 'Item.dart';
import 'MenuCard.dart';

void main() => runApp(MaterialApp(
  home: MenuList(),
));


class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<Item> menuItems = [
    Item(item: 'Classic Cheese Burger', price: 49.99),
    Item(item: 'Bacon Cheese Burger', price: 59.99),
    Item(item: 'Double Delux Burger', price: 79.99),
    Item(item: 'Veggie Burger', price: 54.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Column(
        children: menuItems.map((item) => MenuCard(
          menu: item,
          deleteMenu: (){
              setState(() {
                menuItems.remove(item);
              });
          },
        )).toList(),
      ),
    );
  }
}



