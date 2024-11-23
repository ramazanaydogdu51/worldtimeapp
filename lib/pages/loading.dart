import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData () async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    final response = await http.get(url);
      print(response.body);

     Map dataList= jsonDecode(response.body);
     print(dataList);
     print(dataList['title']);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  print('test');
    getData ();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text('loading screen'),
    );
  }
}
