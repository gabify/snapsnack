import 'package:http/http.dart';
import 'dart:convert';

class FetchLocations{
  late List<String> locations = [];
  
  Future<void> getLocations() async{
    try{
      final response = await get(Uri.https('worldtimeapi.org', 'api/timezone'));
      final data = jsonDecode(response.body);
      for(var location in data){
        locations.add(location);
      }
    }catch(e){
      print(e);
    }

  }
}