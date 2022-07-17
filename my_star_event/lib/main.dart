import 'package:flutter/material.dart';
import 'package:my_star_event/title_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Study',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          elevation: 0.0,
          title: const Text("InkWell 위젯 예제"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/tree.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
          ],
        ),
      ),
    );
  }
}
