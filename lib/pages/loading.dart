import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:worldtime/services/world_time.dart';



class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  String time = 'loading';

  void setupWorldTime()  async {
    WorldTime instance =WorldTime(location: 'Berlin', flag: 'image', url: 'Berlin');
    await instance.getTime();
    print('instance.time' + instance.time);
    setState(() {
      time = instance.time;
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  print('test');
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
    padding:    EdgeInsets.all(50),
    child: Text(time),
    ),
    );
  }
}
