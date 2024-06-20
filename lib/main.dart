import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white60,
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.orange[600],
      centerTitle: true,
    ),
    body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Ivan Gabriel B. Talaoc',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '4th',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'EMAIL',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'ivangabriel.talaoc@g.batstate-u.edu.ph',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0
            ),
          ),
        ],
      ),
    ),
  ),
));