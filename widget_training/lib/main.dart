import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Spacer 연습'),
            elevation: 0.0,
            backgroundColor: Colors.green[200],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                ),
                Spacer(
                  flex: 2,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                ),
              ],
            ),
          )),
    );
  }
}
