import 'package:flutter/material.dart';
import 'package:sample/services/product.dart';
import 'package:sample/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Deluxe Burger", price: 49.99),
    Product(productName: "Super Deluxe Burger",
        price: 59.99),
    Product(productName: "Double Deluxe Burger",
        price: 75.99),
    Product(productName: "Cheesy Deluxe Burger",
        price: 69.99),
    Product(productName: "Two feetlong", price: 85.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        foregroundColor: Colors.white70,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: products.map((product) =>
              Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}
