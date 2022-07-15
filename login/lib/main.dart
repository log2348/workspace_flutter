import 'package:flutter/material.dart';

void main() {
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(400, 60),
      ))),
    );
  }
}
