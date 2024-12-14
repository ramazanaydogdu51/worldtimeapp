import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';


class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url; // location url for the api endpoint
  late bool isDayTime;  // true or false if daytime or not


  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      final endpoint = Uri.parse(
          'https://timeapi.io/api/time/current/zone?timeZone=Europe%2F$url');
      print('endpoint = ' + endpoint.toString());
      final response = await http.get(endpoint);
      print(response.body);

      Map dataList = jsonDecode(response.body);
      print(dataList['dateTime']);

      DateTime now = DateTime.parse(dataList['dateTime']);
      print(now);

      //now =now.add(Duration(hours: 1 ,minutes: 30));
      print(now);
      isDayTime = now.hour > 6 && now.hour < 14   ?   true  : false    ;
      time = DateFormat.jm().format(now);

    } catch (e) {
      print(e);
      time ='try catch test';
    }
  }
}
