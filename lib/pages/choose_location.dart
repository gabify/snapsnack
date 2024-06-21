import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(
            'Choose a location',
            style: TextStyle(
              color: Colors.white70
            ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Text('Choose Location'),
    );
  }
}
