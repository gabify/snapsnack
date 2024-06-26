import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.orange[600],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/boy.png'),
                    backgroundColor: Colors.orange[400],
                    radius: 65.0,
                  ),
                ),
                Divider(
                  height: 48.0,
                  color: Colors.grey[300],
                ),
                Row(
                  children: [
                    Icon(
                        Icons.person_2,
                        color: Colors.grey[500],
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Ivan Gabriel B. Talaoc',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 25.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.grey[500],
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'YEAR',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[500],
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '$year Year',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 25.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      color: Colors.grey[500],
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'EMAIL',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[400],
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'ivangabriel.talaoc@g.batstate-u.edu.ph',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 25.0
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text(
                        'Add Year',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.orange)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




