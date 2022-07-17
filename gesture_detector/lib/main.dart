import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gesture_detector/home_page.dart';
import 'package:gesture_detector/my_detector_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: MyDetectorWidget()),
      ),
    );
  }
}

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('눌러졌네요 !!');
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}
