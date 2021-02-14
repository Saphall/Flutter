import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for UI
  String time; //time in that location
  String flag; //url to assets flag icon
  String url; //locaion url for api endpoint
  bool isDaytime; //true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      // MAKE THE REQUEST
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      //GET PROPERTIEs FROM DATA
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //CREATE DATETIME object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 18 ? true : false;

      time = DateFormat.jm().format(now); //set time property
    } catch (e) {
      time = 'could not get time data';
    }
  }
}
