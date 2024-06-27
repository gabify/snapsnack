import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/menu');
              },
              child: Text('Go to menu'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Go to profile'),
            ),
          ],
        ),
      ),

    );
  }
}
