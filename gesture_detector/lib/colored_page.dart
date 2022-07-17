import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyColoredPage extends StatefulWidget {
  const MyColoredPage({Key? key}) : super(key: key);

  @override
  State<MyColoredPage> createState() => _MyColoredPageState();
}

class _MyColoredPageState extends State<MyColoredPage> {
  bool _isColored = false;

  void changeColor() {
    if (_isColored) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: changeColor,
          child: Text("setColor"),
        ),
      ],
    ));
  }
}
