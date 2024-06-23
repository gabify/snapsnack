import 'package:flutter/material.dart';
import 'package:sample/services/locations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sample/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

 Future<List<String>> fetchLocations() async{
   FetchLocations fetchLocations = FetchLocations();
   await fetchLocations.getLocations();
   return fetchLocations.locations;
 }

 void updateTime(location) async{
   WorldTime instance = WorldTime(url: location, location: location.toString().split('/').last);
   await instance.getTime();
   
   Navigator.pop(context, {
     'location' : instance.location,
     'flag' : instance.flag,
     'time' : instance.time,
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        foregroundColor: Colors.white70,
        backgroundColor: Colors.teal[600],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: fetchLocations(),
        builder: (context, snapshots){
          if(snapshots.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white70,
              ),
            );
          }
          if(snapshots.hasData){
            List<String>? locations = snapshots.data;
            return Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
              child: ListView.builder(
                itemCount: locations?.length,
                itemBuilder: (context, index){
                  return Card(
                    color: Colors.white70,
                    child: ListTile(
                      onTap: (){
                        updateTime(locations[index]);
                      },
                      title: Text(locations![index]),
                    ),
                  );
                },
              ),
            );
          }
          return Center(
            child: Text('An error occured'),
          );
        },
      ),
    );
  }
}
