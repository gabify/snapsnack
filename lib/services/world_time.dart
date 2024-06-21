import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String? location; //the location
  String? time; //time in the location
  String? flag; //flag of the location
  String? url; //url of the api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try {
      //Make Request
      final response = await get(
          Uri.https('worldtimeapi.org', 'api/timezone/$url'));
      final data = json.decode(response.body);

      //Store to variable
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //Make datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.jm().format(now);
    }catch(e){
      time = 'Could not load requested data';
    }

  }

}