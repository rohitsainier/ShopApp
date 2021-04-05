import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> resturants = [
    "Hungry Villa",
    "Evergreen",
    "Pizza Corner",
    "Hurgry Hawelli",
    "Subway",
    "Olive Garden"
  ];

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("What do you want to eat?"),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          if (currentIndex != null)
            Text(
              resturants[currentIndex],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          FlatButton(
            onPressed: () {
              updateIndex();
            },
            child: Text("Pick a Resturant"),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ))), // Scafold
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(resturants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
