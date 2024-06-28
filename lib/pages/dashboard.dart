import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Dashboard extends StatefulWidget {

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        onTap: (int val){
            switch(val){
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/menu');
                break;
              case 2:
                Navigator.pushNamed(context, '/profile');
                break;
            }
        },
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Menu'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),
        ],
      ),
    );
  }
}
