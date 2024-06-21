import 'package:flutter/material.dart';
import 'package:sample/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String? time = 'Loading...';
  void setupWorldTime()async {
    WorldTime instance = WorldTime(
        location: 'Philippines',
        flag: 'phil.png',
        url: 'Asia/Manila'
    );
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments:{
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
    });
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Center(
        child: SpinKitWaveSpinner(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
