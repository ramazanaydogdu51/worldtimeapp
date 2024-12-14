import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data);

    // set background

    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpeg';
    Color? bgColor = data['isDayTime'] ? Colors.lightBlueAccent[100] : Colors.indigo[900];
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit :BoxFit.cover,
              ),
            ),

            child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                    child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                    Icons.edit_location,
                  color: Colors.white,
                ),
                label: Text(
                    'Edit Location',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 50,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              )
            ],
                    ),
                  ),
          )),
    );
  }
}
