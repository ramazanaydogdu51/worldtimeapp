import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
   // var url = Uri.https('https://jsonplaceholder.typicode.com/todos/1');
    var response= http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
   print(response);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text('loading screen'),
    );
  }
}
