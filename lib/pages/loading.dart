import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  print('test');
    getTime ();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text('loading screen'),
    );
  }
}
