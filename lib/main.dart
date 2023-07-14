import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(17)),
            depth: 15,
            lightSource: LightSource.top,
          ),
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: NeumorphicText(
                'Neumorphic Text',
                style: NeumorphicStyle(depth: 9, color: Colors.black),
                textStyle: NeumorphicTextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
