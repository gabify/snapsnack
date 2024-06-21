import 'package:flutter/material.dart';
import 'dart:convert';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  Object? parameter;

  @override
  Widget build(BuildContext context) {
    parameter = ModalRoute.of(context)?.settings.arguments;
    data = jsonDecode(jsonEncode(parameter));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/chooseLocation');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.edit_location),
                      Text('Edit Location')
                    ],
                  )
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${data['location']}',
                    style: TextStyle(
                      fontSize: 35.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 70.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
