import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Italy', flag: 'image', url: 'Rome');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,


    }
    );
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
      backgroundColor:  Colors.blue,
      body: Center(
         child:  SpinKitThreeInOut( //burada SpinKit den sonra olan bir class adını verirsen degir
            color: Colors.white,
            size: 81.0,
          ),
      ),
    );
  }
}
