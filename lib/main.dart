import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List colors = [Colors.red, Colors.green, Colors.yellow, Colors.black,
  Colors.blue, Colors.teal, Colors.purple];
  Random random = new Random();

  int index = 0;

  void changeColor() {
    setState(() => index = random.nextInt(7));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          changeColor();
        },
        child: new Container(
          color: colors[index],
          child: Center(
            child: Text('Hello Solid Software',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0, color: Colors.white)),
          ),
        ));
  }
}
