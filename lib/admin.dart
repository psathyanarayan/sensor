//import 'dart:async';

import 'package:flutter/material.dart';



void main() {
  runApp(const admin());
}

class admin extends StatelessWidget {
  const admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sensors Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Activity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // List<double>? _accelerometerValues;
  // List<double>? _userAccelerometerValues;
  // List<double>? _gyroscopeValues;
  // List<double>? _magnetometerValues;
  // final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  // List<AccelerometerData> _accelerometerData = [];
  // List<GyroscopeData> _gyroscopeData = [];

  int backAndForth = 0;

  @override
  Widget build(BuildContext context) {
    // final accelerometer =
    // _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
    // final gyroscope =
    // _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
    // final userAccelerometer = _userAccelerometerValues
    //     ?.map((double v) => v.toStringAsFixed(1))
    //     .toList();
    // final magnetometer =
    // _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const admin()),
              );},
        
        child: Icon(
          Icons.logout,
          size: 26.0,
        ),
      )
    ),
    
  ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black38),
              ),
            ),
          ),
          CircleAvatar(
                    backgroundColor: Colors.blue[500],
                    radius: 45,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ),
                  Text("Name : Admin",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),),
                  Text("Role : Admin",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),),
                  Text("Organisation : abc",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),),
          Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.blue[100],
          child: SizedBox(
            width: 300,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  
                  const SizedBox(
                    height: 26,
                  ), //SizedBox
                  Text(
                    'Activity Report',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w400,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 26,
                  ), //SizedBox
                 Text(
                    'Person1 Walking',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[500],
                      fontWeight: FontWeight.w400,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 2,
                  ),
                 
 
                  
                  
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
       
        ],
          
      ),
  
  );}
}